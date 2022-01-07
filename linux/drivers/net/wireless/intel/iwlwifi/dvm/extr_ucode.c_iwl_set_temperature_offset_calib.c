
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {TYPE_1__* nvm_data; } ;
struct iwl_calib_temperature_offset_cmd {scalar_t__ radio_sensor_offset; int hdr; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ raw_temperature; } ;


 scalar_t__ DEFAULT_RADIO_SENSOR_OFFSET ;
 int IWL_DEBUG_CALIB (struct iwl_priv*,char*,int ) ;
 int IWL_PHY_CALIBRATE_TEMP_OFFSET_CMD ;
 int iwl_calib_set (struct iwl_priv*,void*,int) ;
 int iwl_set_calib_hdr (int *,int ) ;
 int le16_to_cpu (scalar_t__) ;
 int memset (struct iwl_calib_temperature_offset_cmd*,int ,int) ;

__attribute__((used)) static int iwl_set_temperature_offset_calib(struct iwl_priv *priv)
{
 struct iwl_calib_temperature_offset_cmd cmd;

 memset(&cmd, 0, sizeof(cmd));
 iwl_set_calib_hdr(&cmd.hdr, IWL_PHY_CALIBRATE_TEMP_OFFSET_CMD);
 cmd.radio_sensor_offset = priv->nvm_data->raw_temperature;
 if (!(cmd.radio_sensor_offset))
  cmd.radio_sensor_offset = DEFAULT_RADIO_SENSOR_OFFSET;

 IWL_DEBUG_CALIB(priv, "Radio sensor offset: %d\n",
   le16_to_cpu(cmd.radio_sensor_offset));
 return iwl_calib_set(priv, (void *)&cmd, sizeof(cmd));
}
