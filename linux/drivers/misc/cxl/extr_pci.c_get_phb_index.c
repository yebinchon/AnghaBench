
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int ENODEV ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int get_phb_index(struct device_node *np, u32 *phb_index)
{
 if (of_property_read_u32(np, "ibm,phb-index", phb_index))
  return -ENODEV;
 return 0;
}
