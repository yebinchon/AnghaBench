
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct twl4030_power_data {int num; TYPE_1__** scripts; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int load_twl4030_script (struct twl4030_power_data const*,TYPE_1__*,int ) ;
 int twl4030_start_script_address ;

__attribute__((used)) static int
twl4030_power_configure_scripts(const struct twl4030_power_data *pdata)
{
 int err;
 int i;
 u8 address = twl4030_start_script_address;

 for (i = 0; i < pdata->num; i++) {
  err = load_twl4030_script(pdata, pdata->scripts[i], address);
  if (err)
   return err;
  address += pdata->scripts[i]->size;
 }

 return 0;
}
