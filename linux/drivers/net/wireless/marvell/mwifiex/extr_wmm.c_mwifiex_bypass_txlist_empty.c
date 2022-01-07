
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {int bypass_txq; } ;
struct TYPE_2__ {int (* is_port_ready ) (struct mwifiex_private*) ;} ;
struct mwifiex_adapter {int priv_num; TYPE_1__ if_ops; struct mwifiex_private** priv; } ;


 int skb_queue_empty (int *) ;
 int stub1 (struct mwifiex_private*) ;

int mwifiex_bypass_txlist_empty(struct mwifiex_adapter *adapter)
{
 struct mwifiex_private *priv;
 int i;

 for (i = 0; i < adapter->priv_num; i++) {
  priv = adapter->priv[i];
  if (!priv)
   continue;
  if (adapter->if_ops.is_port_ready &&
      !adapter->if_ops.is_port_ready(priv))
   continue;
  if (!skb_queue_empty(&priv->bypass_txq))
   return 0;
 }

 return 1;
}
