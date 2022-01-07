
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_audio_data {scalar_t__ vibra; } ;
struct device_node {int dummy; } ;


 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static bool twl4030_audio_has_vibra(struct twl4030_audio_data *pdata,
         struct device_node *node)
{
 int vibra;

 if (pdata && pdata->vibra)
  return 1;

 if (!of_property_read_u32(node, "ti,enable-vibra", &vibra) && vibra)
  return 1;

 return 0;
}
