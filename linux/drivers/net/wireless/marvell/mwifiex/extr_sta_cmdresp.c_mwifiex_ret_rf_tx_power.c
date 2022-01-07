
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mwifiex_private {int min_tx_power_level; int max_tx_power_level; void* tx_power_level; int adapter; } ;
struct host_cmd_ds_rf_tx_pwr {int min_power; int max_power; int cur_level; int action; } ;
struct TYPE_2__ {struct host_cmd_ds_rf_tx_pwr txp; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 scalar_t__ HostCmd_ACT_GEN_GET ;
 int INFO ;
 void* le16_to_cpu (int ) ;
 int mwifiex_dbg (int ,int ,char*,void*,int ,int ) ;

__attribute__((used)) static int mwifiex_ret_rf_tx_power(struct mwifiex_private *priv,
       struct host_cmd_ds_command *resp)
{
 struct host_cmd_ds_rf_tx_pwr *txp = &resp->params.txp;
 u16 action = le16_to_cpu(txp->action);

 priv->tx_power_level = le16_to_cpu(txp->cur_level);

 if (action == HostCmd_ACT_GEN_GET) {
  priv->max_tx_power_level = txp->max_power;
  priv->min_tx_power_level = txp->min_power;
 }

 mwifiex_dbg(priv->adapter, INFO,
      "Current TxPower Level=%d, Max Power=%d, Min Power=%d\n",
      priv->tx_power_level, priv->max_tx_power_level,
      priv->min_tx_power_level);

 return 0;
}
