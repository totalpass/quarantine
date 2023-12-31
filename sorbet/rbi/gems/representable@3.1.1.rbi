# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `representable` gem.
# Please instead update this file by running `bin/tapioca gem representable`.

# typed: true

module Representable
  mixes_in_class_methods ::Declarative::Schema::DSL
  mixes_in_class_methods ::Declarative::Schema::Feature
  mixes_in_class_methods ::Declarative::Heritage::DSL
  mixes_in_class_methods ::Representable::Declarative
  mixes_in_class_methods ::Declarative::Heritage::Included
  mixes_in_class_methods ::Declarative::Heritage::Inherited
  mixes_in_class_methods ::Representable::ModuleExtensions
  mixes_in_class_methods ::Representable::ClassMethods
  mixes_in_class_methods ::Representable::ForCollection
  mixes_in_class_methods ::Representable::Represent

  def representable_attrs=(_arg0); end

  private

  def create_representation_with(doc, options, format); end
  def normalize_options(user_options: T.unsafe(nil), **options); end
  def representable_attrs; end
  def representable_bindings_for(format, options); end
  def representable_map(options, format); end
  def representable_map!(doc, options, format, method); end
  def representation_wrap(options = T.unsafe(nil)); end
  def represented; end
  def update_properties_from(doc, options, format); end

  class << self
    def Option(value); end
    def included(base); end
  end
end

Representable::As = T.let(T.unsafe(nil), Proc)
Representable::AssignAs = T.let(T.unsafe(nil), Proc)
Representable::AssignFragment = T.let(T.unsafe(nil), Proc)
Representable::AssignName = T.let(T.unsafe(nil), Proc)

class Representable::Binding
  include ::Representable::Binding::Deprecatable
  include ::Representable::Binding::EvaluateOption
  include ::Representable::Binding::Factories
  extend ::Uber::Delegates

  def initialize(definition); end

  def [](name); end
  def cached_representer; end
  def cached_representer=(_arg0); end
  def default_for(value); end
  def getter; end
  def name; end
  def setter; end
  def skipable_empty_value?(value); end

  private

  def exec_context(options); end
  def parse_pipeline(input, options); end
  def render_pipeline(input, options); end
  def setup_exec_context!; end

  class << self
    def build(definition); end
  end
end

module Representable::Binding::Collection
  def skipable_empty_value?(value); end
end

module Representable::Binding::Deprecatable
  def compile_fragment(options); end
  def uncompile_fragment(options); end
end

module Representable::Binding::EvaluateOption
  def evaluate_option(name, input, options); end
end

module Representable::Binding::Factories
  def collect_for(item_functions); end
  def default_parse_fragment_functions; end
  def default_parse_init_functions; end
  def default_post_functions; end
  def default_render_fragment_functions; end
  def default_render_init_functions; end
  def parse_functions; end
  def pipeline_for(name, input, options); end
  def render_functions; end
end

class Representable::Binding::FragmentNotFound; end

class Representable::Binding::Map < ::Array
  def <<(binding); end
  def call(method, options); end
end

module Representable::Cached
  mixes_in_class_methods ::Representable::Cached::BuildDefinition

  def representable_map(*_arg0); end

  class << self
    def included(includer); end
  end
end

module Representable::Cached::BuildDefinition
  def build_definition(*_arg0); end
end

module Representable::ClassMethods
  def prepare(represented); end
end

class Representable::Collect < ::Representable::Pipeline
  def call(input, options); end
end

class Representable::Collect::Hash < ::Representable::Pipeline
  def call(input, options); end
end

class Representable::Config < ::Declarative::Definitions
  def initialize(*_arg0); end

  def options; end
  def remove(name); end
  def wrap=(value); end
  def wrap_for(represented, options = T.unsafe(nil), &block); end

  private

  def infer_name_for(name); end
end

module Representable::CreateObject; end
Representable::CreateObject::Class = T.let(T.unsafe(nil), Proc)
Representable::CreateObject::Instance = T.let(T.unsafe(nil), Proc)
Representable::CreateObject::Populator = T.let(T.unsafe(nil), Proc)

module Representable::Declarative
  include ::Declarative::Schema::DSL
  include ::Declarative::Schema::Feature
  include ::Declarative::Heritage::DSL

  def collection(name, options = T.unsafe(nil), &block); end
  def default_nested_class; end
  def definitions; end
  def hash(name = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def nested(name, options = T.unsafe(nil), &block); end
  def nested_builder; end
  def representable_attrs; end
  def representation_wrap=(name); end
end

Representable::Declarative::NestedBuilder = T.let(T.unsafe(nil), Proc)
Representable::Decorate = T.let(T.unsafe(nil), Representable::Function::Decorate)

class Representable::Decorator
  include ::Representable
  include ::Representable::Cached
  extend ::Declarative::Schema::DSL
  extend ::Declarative::Schema::Feature
  extend ::Declarative::Heritage::DSL
  extend ::Representable::Declarative
  extend ::Declarative::Heritage::Included
  extend ::Declarative::Heritage::Inherited
  extend ::Representable::ModuleExtensions
  extend ::Representable::ClassMethods
  extend ::Representable::ForCollection
  extend ::Representable::Represent
  extend ::Representable::Cached::BuildDefinition
  extend ::Uber::InheritableAttr

  def initialize(represented); end

  def decorated; end
  def represented; end

  class << self
    def clone; end
    def default_nested_class; end
    def map; end
    def map=(v); end
    def nested_builder; end
    def prepare(represented); end
  end
end

Representable::Default = T.let(T.unsafe(nil), Proc)

class Representable::Definition < ::Declarative::Definitions::Definition
  def initialize(sym, options = T.unsafe(nil), &block); end

  def [](name); end
  def array?; end
  def create_binding(*args); end
  def delete!(name); end
  def getter; end
  def has_default?; end
  def hash?; end
  def inspect; end
  def merge!(options, &block); end
  def name; end
  def representable?; end
  def representer_module; end
  def setter; end
  def typed?; end

  private

  def dynamic_options; end
  def handle_as!(options); end
  def handle_extend!(options); end
  def runtime_options!(options); end
  def setup!(options, &block); end
end

Representable::Deserialize = T.let(T.unsafe(nil), Proc)
class Representable::DeserializeError < ::RuntimeError; end
Representable::Deserializer = T.let(T.unsafe(nil), Proc)
Representable::FindOrInstantiate = T.let(T.unsafe(nil), Proc)

module Representable::ForCollection
  def for_collection; end

  private

  def collection_representer(options = T.unsafe(nil)); end
  def collection_representer!(options); end
end

module Representable::Function; end

class Representable::Function::Decorate
  def call(object, options); end
  def prepare_for(mod, object, binding); end
end

class Representable::Function::Prepare
  def call(input, options); end
end

Representable::GetValue = T.let(T.unsafe(nil), Proc)
Representable::Getter = T.let(T.unsafe(nil), Proc)

module Representable::Hash
  include ::Representable

  mixes_in_class_methods ::Declarative::Schema::DSL
  mixes_in_class_methods ::Declarative::Schema::Feature
  mixes_in_class_methods ::Declarative::Heritage::DSL
  mixes_in_class_methods ::Representable::Declarative
  mixes_in_class_methods ::Declarative::Heritage::Included
  mixes_in_class_methods ::Declarative::Heritage::Inherited
  mixes_in_class_methods ::Representable::ModuleExtensions
  mixes_in_class_methods ::Representable::ClassMethods
  mixes_in_class_methods ::Representable::ForCollection
  mixes_in_class_methods ::Representable::Represent
  mixes_in_class_methods ::Representable::Hash::ClassMethods

  def from_hash(data, options = T.unsafe(nil), binding_builder = T.unsafe(nil)); end
  def parse(data, options = T.unsafe(nil), binding_builder = T.unsafe(nil)); end
  def render(options = T.unsafe(nil), binding_builder = T.unsafe(nil)); end
  def to_hash(options = T.unsafe(nil), binding_builder = T.unsafe(nil)); end

  private

  def filter_wrap(data, options); end
  def filter_wrap_for(data, wrap); end

  class << self
    def included(base); end
  end
end

module Representable::Hash::AllowSymbols
  private

  def filter_wrap_for(data, *args); end
  def update_properties_from(data, *args); end
end

class Representable::Hash::Binding < ::Representable::Binding
  def deserialize_method; end
  def read(hash, as); end
  def serialize_method; end
  def write(hash, fragment, as); end

  class << self
    def build_for(definition); end
  end
end

class Representable::Hash::Binding::Collection < ::Representable::Hash::Binding
  include ::Representable::Binding::Collection
end

module Representable::Hash::ClassMethods
  def collection_representer_class; end
  def format_engine; end
end

module Representable::Hash::Collection
  include ::Representable::Hash
  include ::Representable
  extend ::Declarative::Schema::DSL
  extend ::Declarative::Schema::Feature
  extend ::Declarative::Heritage::DSL
  extend ::Representable::Declarative
  extend ::Declarative::Heritage::Included
  extend ::Declarative::Heritage::Inherited
  extend ::Representable::ModuleExtensions
  extend ::Representable::ClassMethods
  extend ::Representable::ForCollection
  extend ::Representable::Represent
  extend ::Representable::Hash::ClassMethods
  include ::Representable
  include ::Representable::Hash

  mixes_in_class_methods ::Declarative::Schema::DSL
  mixes_in_class_methods ::Declarative::Schema::Feature
  mixes_in_class_methods ::Declarative::Heritage::DSL
  mixes_in_class_methods ::Representable::Declarative
  mixes_in_class_methods ::Declarative::Heritage::Included
  mixes_in_class_methods ::Declarative::Heritage::Inherited
  mixes_in_class_methods ::Representable::ModuleExtensions
  mixes_in_class_methods ::Representable::ClassMethods
  mixes_in_class_methods ::Representable::ForCollection
  mixes_in_class_methods ::Representable::Represent
  mixes_in_class_methods ::Representable::Hash::ClassMethods
  mixes_in_class_methods ::Representable::Hash::Collection::ClassMethods

  def create_representation_with(doc, options, format); end
  def update_properties_from(doc, options, format); end

  class << self
    def included(base); end
  end
end

module Representable::Hash::Collection::ClassMethods
  def items(options = T.unsafe(nil), &block); end
end

module Representable::Hash::Conversion
  class << self
    def stringify_keys(hash); end
  end
end

module Representable::HashMethods
  def create_representation_with(doc, options, format); end
  def update_properties_from(doc, options, format); end

  private

  def filter_keys_for!(hash, options); end
end

Representable::If = T.let(T.unsafe(nil), Proc)

module Representable::JSON
  include ::Representable::Hash
  include ::Representable
  extend ::Representable::Hash::ClassMethods
  extend ::Declarative::Schema::DSL
  extend ::Declarative::Schema::Feature
  extend ::Declarative::Heritage::DSL
  extend ::Representable::Declarative
  extend ::Declarative::Heritage::Included
  extend ::Declarative::Heritage::Inherited
  extend ::Representable::ModuleExtensions
  extend ::Representable::ClassMethods
  extend ::Representable::ForCollection
  extend ::Representable::Represent
  include ::Representable

  mixes_in_class_methods ::Declarative::Schema::DSL
  mixes_in_class_methods ::Declarative::Schema::Feature
  mixes_in_class_methods ::Declarative::Heritage::DSL
  mixes_in_class_methods ::Representable::Declarative
  mixes_in_class_methods ::Declarative::Heritage::Included
  mixes_in_class_methods ::Declarative::Heritage::Inherited
  mixes_in_class_methods ::Representable::ModuleExtensions
  mixes_in_class_methods ::Representable::ClassMethods
  mixes_in_class_methods ::Representable::ForCollection
  mixes_in_class_methods ::Representable::Represent
  mixes_in_class_methods ::Representable::JSON::ClassMethods

  def from_json(data, *args); end
  def parse(data, *args); end
  def render(*args); end
  def to_json(*args); end

  class << self
    def included(base); end
  end
end

module Representable::JSON::ClassMethods
  def collection_representer_class; end
  def format_engine; end
end

module Representable::JSON::Collection
  include ::Representable::Hash
  include ::Representable
  include ::Representable::JSON
  extend ::Declarative::Schema::DSL
  extend ::Declarative::Schema::Feature
  extend ::Declarative::Heritage::DSL
  extend ::Representable::Declarative
  extend ::Declarative::Heritage::Included
  extend ::Declarative::Heritage::Inherited
  extend ::Representable::ModuleExtensions
  extend ::Representable::ClassMethods
  extend ::Representable::ForCollection
  extend ::Representable::Represent
  extend ::Representable::JSON::ClassMethods
  include ::Representable
  include ::Representable::Hash
  include ::Representable::Hash::Collection

  mixes_in_class_methods ::Declarative::Schema::DSL
  mixes_in_class_methods ::Declarative::Schema::Feature
  mixes_in_class_methods ::Declarative::Heritage::DSL
  mixes_in_class_methods ::Representable::Declarative
  mixes_in_class_methods ::Declarative::Heritage::Included
  mixes_in_class_methods ::Declarative::Heritage::Inherited
  mixes_in_class_methods ::Representable::ModuleExtensions
  mixes_in_class_methods ::Representable::ClassMethods
  mixes_in_class_methods ::Representable::ForCollection
  mixes_in_class_methods ::Representable::Represent
  mixes_in_class_methods ::Representable::Hash::ClassMethods
  mixes_in_class_methods ::Representable::Hash::Collection::ClassMethods

  class << self
    def included(base); end
  end
end

module Representable::JSON::Hash
  include ::Representable
  include ::Representable::JSON
  include ::Representable::HashMethods

  mixes_in_class_methods ::Declarative::Schema::DSL
  mixes_in_class_methods ::Declarative::Schema::Feature
  mixes_in_class_methods ::Declarative::Heritage::DSL
  mixes_in_class_methods ::Representable::Declarative
  mixes_in_class_methods ::Declarative::Heritage::Included
  mixes_in_class_methods ::Declarative::Heritage::Inherited
  mixes_in_class_methods ::Representable::ModuleExtensions
  mixes_in_class_methods ::Representable::ClassMethods
  mixes_in_class_methods ::Representable::ForCollection
  mixes_in_class_methods ::Representable::Represent
  mixes_in_class_methods ::Representable::JSON::Hash::ClassMethods
  mixes_in_class_methods ::Representable::JSON::ClassMethods

  class << self
    def included(base); end
  end
end

module Representable::JSON::Hash::ClassMethods
  def values(options, &block); end
end

module Representable::ModuleExtensions
  def extended(object); end
end

module Representable::Object
  include ::Representable

  mixes_in_class_methods ::Declarative::Schema::DSL
  mixes_in_class_methods ::Declarative::Schema::Feature
  mixes_in_class_methods ::Declarative::Heritage::DSL
  mixes_in_class_methods ::Representable::Declarative
  mixes_in_class_methods ::Declarative::Heritage::Included
  mixes_in_class_methods ::Declarative::Heritage::Inherited
  mixes_in_class_methods ::Representable::ModuleExtensions
  mixes_in_class_methods ::Representable::ClassMethods
  mixes_in_class_methods ::Representable::ForCollection
  mixes_in_class_methods ::Representable::Represent
  mixes_in_class_methods ::Representable::Object::ClassMethods

  def from_object(data, options = T.unsafe(nil), binding_builder = T.unsafe(nil)); end
  def to_object(options = T.unsafe(nil), binding_builder = T.unsafe(nil)); end

  class << self
    def included(base); end
  end
end

class Representable::Object::Binding < ::Representable::Binding
  def deserialize_method; end
  def read(hash, as); end
  def serialize_method; end
  def write(hash, fragment, as); end

  class << self
    def build_for(definition); end
  end
end

class Representable::Object::Binding::Collection < ::Representable::Object::Binding
  include ::Representable::Binding::Collection
end

module Representable::Object::ClassMethods
  def collection_representer_class; end
end

class Representable::Option < ::Trailblazer::Option
  class << self
    def build(value); end
    def callable?(value); end
  end
end

Representable::OptionsForNested = T.let(T.unsafe(nil), Proc)
Representable::OverwriteOnNil = T.let(T.unsafe(nil), Proc)
Representable::ParseFilter = T.let(T.unsafe(nil), Proc)

class Representable::Pipeline < ::Array
  extend ::Representable::Pipeline::Macros

  def call(input, options); end

  private

  def evaluate(block, input, options); end
end

module Representable::Pipeline::Function; end

class Representable::Pipeline::Function::Insert
  def call(arr, func, options); end

  private

  def delete!(arr, removed_func); end
  def replace!(arr, old_func, new_func); end
end

Representable::Pipeline::Insert = T.let(T.unsafe(nil), Representable::Pipeline::Function::Insert)

module Representable::Pipeline::Macros
  def insert(functions, new_function, options); end
end

class Representable::Pipeline::Stop; end

class Representable::Populator
  class << self
    def apply!(options); end
  end
end

Representable::Populator::FindOrInstantiate = T.let(T.unsafe(nil), Proc)
Representable::Prepare = T.let(T.unsafe(nil), Representable::Function::Prepare)
Representable::ReadFragment = T.let(T.unsafe(nil), Proc)
Representable::Reader = T.let(T.unsafe(nil), Proc)
Representable::RenderDefault = T.let(T.unsafe(nil), Proc)
Representable::RenderFilter = T.let(T.unsafe(nil), Proc)

module Representable::Represent
  def represent(represented, array_class = T.unsafe(nil)); end
end

Representable::Serialize = T.let(T.unsafe(nil), Proc)
Representable::Serializer = T.let(T.unsafe(nil), Proc)
Representable::SetValue = T.let(T.unsafe(nil), Proc)
Representable::Setter = T.let(T.unsafe(nil), Proc)
Representable::SkipParse = T.let(T.unsafe(nil), Proc)
Representable::SkipRender = T.let(T.unsafe(nil), Proc)
Representable::Stop = T.let(T.unsafe(nil), Proc)
Representable::StopOnExcluded = T.let(T.unsafe(nil), Proc)
Representable::StopOnNil = T.let(T.unsafe(nil), Proc)
Representable::StopOnNotFound = T.let(T.unsafe(nil), Proc)
Representable::StopOnSkipable = T.let(T.unsafe(nil), Proc)
Representable::WriteFragment = T.let(T.unsafe(nil), Proc)
Representable::Writer = T.let(T.unsafe(nil), Proc)

module Representable::XML
  include ::Representable

  mixes_in_class_methods ::Declarative::Schema::DSL
  mixes_in_class_methods ::Declarative::Schema::Feature
  mixes_in_class_methods ::Declarative::Heritage::DSL
  mixes_in_class_methods ::Representable::Declarative
  mixes_in_class_methods ::Declarative::Heritage::Included
  mixes_in_class_methods ::Declarative::Heritage::Inherited
  mixes_in_class_methods ::Representable::ModuleExtensions
  mixes_in_class_methods ::Representable::ClassMethods
  mixes_in_class_methods ::Representable::ForCollection
  mixes_in_class_methods ::Representable::Represent
  mixes_in_class_methods ::Representable::XML::ClassMethods

  def from_node(node, options = T.unsafe(nil)); end
  def from_xml(doc, *args); end
  def parse(doc, *args); end
  def render(*args); end
  def to_node(options = T.unsafe(nil)); end
  def to_xml(*args); end

  private

  def parse_xml(doc, *args); end
  def remove_namespaces?; end

  class << self
    def included(base); end
  end
end

class Representable::XML::Binding < ::Representable::Binding
  def deserialize_from(nodes); end
  def deserialize_method; end
  def read(node, as); end
  def serialize_for(value, parent, as); end
  def serialize_method; end
  def serialize_node(node, value, as); end
  def write(parent, fragments, as); end

  private

  def content_for(node); end
  def find_nodes(doc, as); end

  class << self
    def build_for(definition); end
  end
end

class Representable::XML::Binding::Attribute < ::Representable::XML::Binding
  def read(node, as); end
  def serialize_for(value, parent, as); end
  def write(parent, value, as); end
end

class Representable::XML::Binding::AttributeHash < ::Representable::XML::Binding::Collection
  def deserialize_from(node); end
  def write(parent, value, as); end
end

class Representable::XML::Binding::Collection < ::Representable::XML::Binding
  include ::Representable::Binding::Collection

  def deserialize_from(nodes); end
  def serialize_for(value, parent, as); end

  private

  def set_for(parent, nodes); end
end

class Representable::XML::Binding::Content < ::Representable::XML::Binding
  def read(node, as); end
  def serialize_for(value, parent); end
  def write(parent, value, as); end
end

class Representable::XML::Binding::Hash < ::Representable::XML::Binding::Collection
  def deserialize_from(nodes); end
  def serialize_for(value, parent, as); end
end

module Representable::XML::ClassMethods
  def collection_representer_class; end
  def format_engine; end
  def remove_namespaces!; end
end

module Representable::XML::Collection
  include ::Representable
  include ::Representable::XML
  include ::Representable::Hash
  include ::Representable::Hash::Collection
  include ::Representable::XML::Collection::Methods

  mixes_in_class_methods ::Declarative::Schema::DSL
  mixes_in_class_methods ::Declarative::Schema::Feature
  mixes_in_class_methods ::Declarative::Heritage::DSL
  mixes_in_class_methods ::Representable::Declarative
  mixes_in_class_methods ::Declarative::Heritage::Included
  mixes_in_class_methods ::Declarative::Heritage::Inherited
  mixes_in_class_methods ::Representable::ModuleExtensions
  mixes_in_class_methods ::Representable::ClassMethods
  mixes_in_class_methods ::Representable::ForCollection
  mixes_in_class_methods ::Representable::Represent
  mixes_in_class_methods ::Representable::XML::ClassMethods
  mixes_in_class_methods ::Representable::Hash::ClassMethods
  mixes_in_class_methods ::Representable::Hash::Collection::ClassMethods

  class << self
    def included(base); end
  end
end

module Representable::XML::Collection::Methods
  def create_representation_with(doc, options, format); end
  def update_properties_from(doc, *args); end
end

module Representable::XML::Namespace
  mixes_in_class_methods ::Representable::XML::Namespace::DSL

  def add_namespace_definitions!(node, namespaces); end
  def from_node(node, options = T.unsafe(nil)); end
  def representable_map(options, format); end
  def to_node(options = T.unsafe(nil)); end

  class << self
    def Namespaced(prefix, name); end
    def included(includer); end
  end
end

module Representable::XML::Namespace::AsWithNamespace
  def read(node, as); end
  def write(doc, fragment, as); end

  private

  def prefixed(dfn, as); end
end

module Representable::XML::Namespace::DSL
  def namespace(namespace); end
  def namespace_def(mapping); end
  def namespace_defs; end
  def property(name, options = T.unsafe(nil)); end
  def update_namespace_defs!(namespace_defs); end
end

module Representable::YAML
  include ::Representable::Hash
  include ::Representable
  extend ::Declarative::Schema::DSL
  extend ::Declarative::Schema::Feature
  extend ::Declarative::Heritage::DSL
  extend ::Representable::Declarative
  extend ::Declarative::Heritage::Included
  extend ::Declarative::Heritage::Inherited
  extend ::Representable::ModuleExtensions
  extend ::Representable::ClassMethods
  extend ::Representable::ForCollection
  extend ::Representable::Represent
  extend ::Representable::Hash::ClassMethods
  include ::Representable

  mixes_in_class_methods ::Declarative::Schema::DSL
  mixes_in_class_methods ::Declarative::Schema::Feature
  mixes_in_class_methods ::Declarative::Heritage::DSL
  mixes_in_class_methods ::Representable::Declarative
  mixes_in_class_methods ::Declarative::Heritage::Included
  mixes_in_class_methods ::Declarative::Heritage::Inherited
  mixes_in_class_methods ::Representable::ModuleExtensions
  mixes_in_class_methods ::Representable::ClassMethods
  mixes_in_class_methods ::Representable::ForCollection
  mixes_in_class_methods ::Representable::Represent
  mixes_in_class_methods ::Representable::YAML::ClassMethods

  def from_yaml(doc, options = T.unsafe(nil)); end
  def parse(doc, options = T.unsafe(nil)); end
  def render(*args); end
  def to_ast(options = T.unsafe(nil)); end
  def to_yaml(*args); end

  class << self
    def included(base); end
  end
end

class Representable::YAML::Binding < ::Representable::Hash::Binding
  def deserialize_method; end
  def node_for(fragment); end
  def serialize_method; end
  def write(map, fragment, as); end
  def write_scalar(value); end

  class << self
    def build_for(definition); end
  end
end

class Representable::YAML::Binding::Collection < ::Representable::YAML::Binding
  include ::Representable::Binding::Collection

  def node_for(fragments); end
end

module Representable::YAML::ClassMethods
  def format_engine; end
end
