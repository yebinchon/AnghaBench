
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct iwl_priv {TYPE_1__* nvm_data; } ;
typedef int s32 ;
struct TYPE_2__ {int kelvin_voltage; int kelvin_temperature; } ;


 int IWL_5150_VOLTAGE_TO_TEMPERATURE_COEFF ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static s32 iwl_temp_calib_to_offset(struct iwl_priv *priv)
{
 u16 temperature, voltage;

 temperature = le16_to_cpu(priv->nvm_data->kelvin_temperature);
 voltage = le16_to_cpu(priv->nvm_data->kelvin_voltage);


 return (s32)(temperature -
   voltage / IWL_5150_VOLTAGE_TO_TEMPERATURE_COEFF);
}
