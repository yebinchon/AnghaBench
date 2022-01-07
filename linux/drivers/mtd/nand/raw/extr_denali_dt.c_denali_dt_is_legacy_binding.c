
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct device_node {int dummy; } ;


 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;

__attribute__((used)) static bool denali_dt_is_legacy_binding(struct device_node *np)
{
 u32 cells;
 int ret;

 ret = of_property_read_u32(np, "#size-cells", &cells);
 if (ret)
  return 1;

 return cells != 0;
}
