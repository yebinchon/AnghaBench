
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int of_get_nand_ecc_strength(struct device_node *np)
{
 int ret;
 u32 val;

 ret = of_property_read_u32(np, "nand-ecc-strength", &val);
 return ret ? ret : val;
}
