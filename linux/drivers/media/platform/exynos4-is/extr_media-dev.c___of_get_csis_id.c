
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int FIMC_INPUT_MIPI_CSI2_0 ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int __of_get_csis_id(struct device_node *np)
{
 u32 reg = 0;

 np = of_get_child_by_name(np, "port");
 if (!np)
  return -EINVAL;
 of_property_read_u32(np, "reg", &reg);
 of_node_put(np);
 return reg - FIMC_INPUT_MIPI_CSI2_0;
}
