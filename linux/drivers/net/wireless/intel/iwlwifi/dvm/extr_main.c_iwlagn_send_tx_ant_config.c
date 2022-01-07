
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_tx_ant_config_cmd {int valid; } ;
struct iwl_priv {TYPE_1__* fw; } ;
struct TYPE_2__ {int ucode_ver; } ;


 int EOPNOTSUPP ;
 int IWL_DEBUG_HC (struct iwl_priv*,char*,...) ;
 int IWL_UCODE_API (int ) ;
 int TX_ANT_CONFIGURATION_CMD ;
 int cpu_to_le32 (int ) ;
 int iwl_dvm_send_cmd_pdu (struct iwl_priv*,int ,int ,int,struct iwl_tx_ant_config_cmd*) ;

__attribute__((used)) static int iwlagn_send_tx_ant_config(struct iwl_priv *priv, u8 valid_tx_ant)
{
 struct iwl_tx_ant_config_cmd tx_ant_cmd = {
   .valid = cpu_to_le32(valid_tx_ant),
 };

 if (IWL_UCODE_API(priv->fw->ucode_ver) > 1) {
  IWL_DEBUG_HC(priv, "select valid tx ant: %u\n", valid_tx_ant);
  return iwl_dvm_send_cmd_pdu(priv, TX_ANT_CONFIGURATION_CMD, 0,
     sizeof(struct iwl_tx_ant_config_cmd),
     &tx_ant_cmd);
 } else {
  IWL_DEBUG_HC(priv, "TX_ANT_CONFIGURATION_CMD not supported\n");
  return -EOPNOTSUPP;
 }
}
