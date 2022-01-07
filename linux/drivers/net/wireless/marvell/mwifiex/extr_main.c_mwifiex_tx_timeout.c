
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mwifiex_private {scalar_t__ tx_timeout_cnt; TYPE_2__* adapter; int bss_num; int bss_type; int num_tx_timeout; } ;
struct TYPE_4__ {int (* card_reset ) (TYPE_2__*) ;} ;
struct TYPE_5__ {TYPE_1__ if_ops; } ;


 int ERROR ;
 scalar_t__ TX_TIMEOUT_THRESHOLD ;
 int jiffies ;
 int mwifiex_dbg (TYPE_2__*,int ,char*,...) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_set_trans_start (struct net_device*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
mwifiex_tx_timeout(struct net_device *dev)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);

 priv->num_tx_timeout++;
 priv->tx_timeout_cnt++;
 mwifiex_dbg(priv->adapter, ERROR,
      "%lu : Tx timeout(#%d), bss_type-num = %d-%d\n",
      jiffies, priv->tx_timeout_cnt, priv->bss_type,
      priv->bss_num);
 mwifiex_set_trans_start(dev);

 if (priv->tx_timeout_cnt > TX_TIMEOUT_THRESHOLD &&
     priv->adapter->if_ops.card_reset) {
  mwifiex_dbg(priv->adapter, ERROR,
       "tx_timeout_cnt exceeds threshold.\t"
       "Triggering card reset!\n");
  priv->adapter->if_ops.card_reset(priv->adapter);
 }
}
