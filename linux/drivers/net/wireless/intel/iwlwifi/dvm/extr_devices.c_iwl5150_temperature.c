
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int temperature; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct iwl_priv {int temperature; TYPE_2__ statistics; } ;
typedef int s32 ;


 int IWL_5150_VOLTAGE_TO_TEMPERATURE_COEFF ;
 int KELVIN_TO_CELSIUS (int) ;
 int iwl_temp_calib_to_offset (struct iwl_priv*) ;
 int iwl_tt_handler (struct iwl_priv*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void iwl5150_temperature(struct iwl_priv *priv)
{
 u32 vt = 0;
 s32 offset = iwl_temp_calib_to_offset(priv);

 vt = le32_to_cpu(priv->statistics.common.temperature);
 vt = vt / IWL_5150_VOLTAGE_TO_TEMPERATURE_COEFF + offset;

 priv->temperature = KELVIN_TO_CELSIUS(vt);
 iwl_tt_handler(priv);
}
