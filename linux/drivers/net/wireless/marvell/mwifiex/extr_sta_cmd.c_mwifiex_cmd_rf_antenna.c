
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct mwifiex_private {TYPE_2__* adapter; } ;
struct mwifiex_ds_ant_cfg {int tx_ant; int rx_ant; } ;
struct host_cmd_ds_rf_ant_siso {void* action; void* ant_mode; } ;
struct host_cmd_ds_rf_ant_mimo {void* action_rx; void* action_tx; void* rx_ant_mode; void* tx_ant_mode; } ;
struct TYPE_3__ {struct host_cmd_ds_rf_ant_siso ant_siso; struct host_cmd_ds_rf_ant_mimo ant_mimo; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;
struct TYPE_4__ {int hw_dev_mcs_support; } ;


 int HT_STREAM_2X2 ;


 int HostCmd_ACT_GET_BOTH ;
 int HostCmd_ACT_GET_RX ;
 int HostCmd_ACT_GET_TX ;
 int HostCmd_ACT_SET_BOTH ;
 int HostCmd_ACT_SET_RX ;
 int HostCmd_ACT_SET_TX ;
 int HostCmd_CMD_RF_ANTENNA ;
 int S_DS_GEN ;
 void* cpu_to_le16 (int) ;

__attribute__((used)) static int mwifiex_cmd_rf_antenna(struct mwifiex_private *priv,
      struct host_cmd_ds_command *cmd,
      u16 cmd_action,
      struct mwifiex_ds_ant_cfg *ant_cfg)
{
 struct host_cmd_ds_rf_ant_mimo *ant_mimo = &cmd->params.ant_mimo;
 struct host_cmd_ds_rf_ant_siso *ant_siso = &cmd->params.ant_siso;

 cmd->command = cpu_to_le16(HostCmd_CMD_RF_ANTENNA);

 switch (cmd_action) {
 case 128:
  if (priv->adapter->hw_dev_mcs_support == HT_STREAM_2X2) {
   cmd->size = cpu_to_le16(sizeof(struct
      host_cmd_ds_rf_ant_mimo)
      + S_DS_GEN);
   ant_mimo->action_tx = cpu_to_le16(HostCmd_ACT_SET_TX);
   ant_mimo->tx_ant_mode = cpu_to_le16((u16)ant_cfg->
           tx_ant);
   ant_mimo->action_rx = cpu_to_le16(HostCmd_ACT_SET_RX);
   ant_mimo->rx_ant_mode = cpu_to_le16((u16)ant_cfg->
           rx_ant);
  } else {
   cmd->size = cpu_to_le16(sizeof(struct
      host_cmd_ds_rf_ant_siso) +
      S_DS_GEN);
   ant_siso->action = cpu_to_le16(HostCmd_ACT_SET_BOTH);
   ant_siso->ant_mode = cpu_to_le16((u16)ant_cfg->tx_ant);
  }
  break;
 case 129:
  if (priv->adapter->hw_dev_mcs_support == HT_STREAM_2X2) {
   cmd->size = cpu_to_le16(sizeof(struct
      host_cmd_ds_rf_ant_mimo) +
      S_DS_GEN);
   ant_mimo->action_tx = cpu_to_le16(HostCmd_ACT_GET_TX);
   ant_mimo->action_rx = cpu_to_le16(HostCmd_ACT_GET_RX);
  } else {
   cmd->size = cpu_to_le16(sizeof(struct
      host_cmd_ds_rf_ant_siso) +
      S_DS_GEN);
   ant_siso->action = cpu_to_le16(HostCmd_ACT_GET_BOTH);
  }
  break;
 }
 return 0;
}
