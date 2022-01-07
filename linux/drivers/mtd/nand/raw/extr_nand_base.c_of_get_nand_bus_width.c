
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int EIO ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int of_get_nand_bus_width(struct device_node *np)
{
 u32 val;

 if (of_property_read_u32(np, "nand-bus-width", &val))
  return 8;

 switch (val) {
 case 8:
 case 16:
  return val;
 default:
  return -EIO;
 }
}
