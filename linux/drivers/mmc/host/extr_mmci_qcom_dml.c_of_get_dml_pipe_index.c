
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int* args; scalar_t__ args_count; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 scalar_t__ of_parse_phandle_with_args (struct device_node*,char*,char*,int,struct of_phandle_args*) ;
 int of_property_match_string (struct device_node*,char*,char const*) ;

__attribute__((used)) static int of_get_dml_pipe_index(struct device_node *np, const char *name)
{
 int index;
 struct of_phandle_args dma_spec;

 index = of_property_match_string(np, "dma-names", name);

 if (index < 0)
  return -ENODEV;

 if (of_parse_phandle_with_args(np, "dmas", "#dma-cells", index,
           &dma_spec))
  return -ENODEV;

 if (dma_spec.args_count)
  return dma_spec.args[0];

 return -ENODEV;
}
