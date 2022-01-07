
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int tx_power_cmd ;
struct iwlagn_tx_power_dbm_cmd {scalar_t__ global_lmt; int srv_chan_lmt; int flags; } ;
struct iwl_priv {int tx_power_user_lmt; TYPE_2__* fw; TYPE_1__* nvm_data; int status; } ;
typedef scalar_t__ s8 ;
struct TYPE_4__ {int ucode_ver; } ;
struct TYPE_3__ {scalar_t__ max_tx_pwr_half_dbm; } ;


 int EAGAIN ;
 int IWLAGN_TX_POWER_AUTO ;
 int IWLAGN_TX_POWER_NO_CLOSED ;
 int IWL_UCODE_API (int ) ;
 int REPLY_TX_POWER_DBM_CMD ;
 int REPLY_TX_POWER_DBM_CMD_V1 ;
 int STATUS_SCAN_HW ;
 scalar_t__ WARN_ONCE (int ,char*) ;
 int iwl_dvm_send_cmd_pdu (struct iwl_priv*,int ,int ,int,struct iwlagn_tx_power_dbm_cmd*) ;
 int test_bit (int ,int *) ;

int iwlagn_send_tx_power(struct iwl_priv *priv)
{
 struct iwlagn_tx_power_dbm_cmd tx_power_cmd;
 u8 tx_ant_cfg_cmd;

 if (WARN_ONCE(test_bit(STATUS_SCAN_HW, &priv->status),
        "TX Power requested while scanning!\n"))
  return -EAGAIN;


 tx_power_cmd.global_lmt = (s8)(2 * priv->tx_power_user_lmt);

 if (tx_power_cmd.global_lmt > priv->nvm_data->max_tx_pwr_half_dbm) {
  tx_power_cmd.global_lmt =
   priv->nvm_data->max_tx_pwr_half_dbm;
 }
 tx_power_cmd.flags = IWLAGN_TX_POWER_NO_CLOSED;
 tx_power_cmd.srv_chan_lmt = IWLAGN_TX_POWER_AUTO;

 if (IWL_UCODE_API(priv->fw->ucode_ver) == 1)
  tx_ant_cfg_cmd = REPLY_TX_POWER_DBM_CMD_V1;
 else
  tx_ant_cfg_cmd = REPLY_TX_POWER_DBM_CMD;

 return iwl_dvm_send_cmd_pdu(priv, tx_ant_cfg_cmd, 0,
   sizeof(tx_power_cmd), &tx_power_cmd);
}
