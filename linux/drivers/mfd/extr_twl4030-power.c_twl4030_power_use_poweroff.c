
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_power_data {scalar_t__ use_poweroff; } ;
struct device_node {int dummy; } ;


 scalar_t__ of_property_read_bool (struct device_node*,char*) ;

__attribute__((used)) static bool twl4030_power_use_poweroff(const struct twl4030_power_data *pdata,
     struct device_node *node)
{
 if (pdata && pdata->use_poweroff)
  return 1;

 if (of_property_read_bool(node, "ti,system-power-controller"))
  return 1;

 if (of_property_read_bool(node, "ti,use_poweroff"))
  return 1;

 return 0;
}
