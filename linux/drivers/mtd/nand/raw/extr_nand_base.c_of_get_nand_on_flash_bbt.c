
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_property_read_bool (struct device_node*,char*) ;

__attribute__((used)) static bool of_get_nand_on_flash_bbt(struct device_node *np)
{
 return of_property_read_bool(np, "nand-on-flash-bbt");
}
