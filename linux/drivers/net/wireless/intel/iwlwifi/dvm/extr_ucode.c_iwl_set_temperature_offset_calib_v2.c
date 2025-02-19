
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {TYPE_1__* nvm_data; } ;
struct iwl_calib_temperature_offset_v2_cmd {void* burntVoltageRef; void* radio_sensor_offset_low; void* radio_sensor_offset_high; int hdr; } ;
typedef int cmd ;
struct TYPE_2__ {void* calib_voltage; void* raw_temperature; void* kelvin_temperature; } ;


 void* DEFAULT_RADIO_SENSOR_OFFSET ;
 int IWL_DEBUG_CALIB (struct iwl_priv*,char*,...) ;
 int IWL_PHY_CALIBRATE_TEMP_OFFSET_CMD ;
 int iwl_calib_set (struct iwl_priv*,void*,int) ;
 int iwl_set_calib_hdr (int *,int ) ;
 int le16_to_cpu (void*) ;
 int memset (struct iwl_calib_temperature_offset_v2_cmd*,int ,int) ;

__attribute__((used)) static int iwl_set_temperature_offset_calib_v2(struct iwl_priv *priv)
{
 struct iwl_calib_temperature_offset_v2_cmd cmd;

 memset(&cmd, 0, sizeof(cmd));
 iwl_set_calib_hdr(&cmd.hdr, IWL_PHY_CALIBRATE_TEMP_OFFSET_CMD);
 cmd.radio_sensor_offset_high = priv->nvm_data->kelvin_temperature;
 cmd.radio_sensor_offset_low = priv->nvm_data->raw_temperature;
 if (!cmd.radio_sensor_offset_low) {
  IWL_DEBUG_CALIB(priv, "no info in EEPROM, use default\n");
  cmd.radio_sensor_offset_low = DEFAULT_RADIO_SENSOR_OFFSET;
  cmd.radio_sensor_offset_high = DEFAULT_RADIO_SENSOR_OFFSET;
 }
 cmd.burntVoltageRef = priv->nvm_data->calib_voltage;

 IWL_DEBUG_CALIB(priv, "Radio sensor offset high: %d\n",
   le16_to_cpu(cmd.radio_sensor_offset_high));
 IWL_DEBUG_CALIB(priv, "Radio sensor offset low: %d\n",
   le16_to_cpu(cmd.radio_sensor_offset_low));
 IWL_DEBUG_CALIB(priv, "Voltage Ref: %d\n",
   le16_to_cpu(cmd.burntVoltageRef));

 return iwl_calib_set(priv, (void *)&cmd, sizeof(cmd));
}
