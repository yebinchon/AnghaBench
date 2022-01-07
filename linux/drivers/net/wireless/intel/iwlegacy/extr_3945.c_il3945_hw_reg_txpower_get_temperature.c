
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {int last_temperature; scalar_t__ eeprom; } ;
struct il3945_eeprom {TYPE_1__* groups; } ;
struct TYPE_2__ {int temperature; } ;


 int D_INFO (char*,scalar_t__) ;
 int IL_ERR (char*,int) ;
 scalar_t__ IL_TEMP_CONVERT ;
 int il3945_hw_get_temperature (struct il_priv*) ;
 scalar_t__ il3945_hw_reg_temp_out_of_range (int) ;

__attribute__((used)) static int
il3945_hw_reg_txpower_get_temperature(struct il_priv *il)
{
 struct il3945_eeprom *eeprom = (struct il3945_eeprom *)il->eeprom;
 int temperature;

 temperature = il3945_hw_get_temperature(il);



 D_INFO("Temperature: %d\n", temperature + IL_TEMP_CONVERT);


 if (il3945_hw_reg_temp_out_of_range(temperature)) {
  IL_ERR("Error bad temperature value  %d\n", temperature);



  if (il->last_temperature > 100)
   temperature = eeprom->groups[2].temperature;
  else
   temperature = il->last_temperature;
 }

 return temperature;
}
