
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {void* rx_ant; void* tx_ant; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {scalar_t__ hw_dev_mcs_support; } ;
struct host_cmd_ds_rf_ant_siso {int ant_mode; int action; } ;
struct host_cmd_ds_rf_ant_mimo {int rx_ant_mode; int action_rx; int tx_ant_mode; int action_tx; } ;
struct TYPE_2__ {struct host_cmd_ds_rf_ant_siso ant_siso; struct host_cmd_ds_rf_ant_mimo ant_mimo; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 scalar_t__ HT_STREAM_2X2 ;
 int INFO ;
 void* le16_to_cpu (int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,void*,void*,...) ;

__attribute__((used)) static int mwifiex_ret_rf_antenna(struct mwifiex_private *priv,
      struct host_cmd_ds_command *resp)
{
 struct host_cmd_ds_rf_ant_mimo *ant_mimo = &resp->params.ant_mimo;
 struct host_cmd_ds_rf_ant_siso *ant_siso = &resp->params.ant_siso;
 struct mwifiex_adapter *adapter = priv->adapter;

 if (adapter->hw_dev_mcs_support == HT_STREAM_2X2) {
  priv->tx_ant = le16_to_cpu(ant_mimo->tx_ant_mode);
  priv->rx_ant = le16_to_cpu(ant_mimo->rx_ant_mode);
  mwifiex_dbg(adapter, INFO,
       "RF_ANT_RESP: Tx action = 0x%x, Tx Mode = 0x%04x\t"
       "Rx action = 0x%x, Rx Mode = 0x%04x\n",
       le16_to_cpu(ant_mimo->action_tx),
       le16_to_cpu(ant_mimo->tx_ant_mode),
       le16_to_cpu(ant_mimo->action_rx),
       le16_to_cpu(ant_mimo->rx_ant_mode));
 } else {
  priv->tx_ant = le16_to_cpu(ant_siso->ant_mode);
  priv->rx_ant = le16_to_cpu(ant_siso->ant_mode);
  mwifiex_dbg(adapter, INFO,
       "RF_ANT_RESP: action = 0x%x, Mode = 0x%04x\n",
       le16_to_cpu(ant_siso->action),
       le16_to_cpu(ant_siso->ant_mode));
 }
 return 0;
}
