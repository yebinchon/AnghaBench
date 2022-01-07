
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nps_enet_priv {int * tx_skb; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int NPS_ENET_REG_TX_CTL ;
 int TX_CTL_ET_MASK ;
 int TX_CTL_ET_SHIFT ;
 int TX_CTL_NT_MASK ;
 int TX_CTL_NT_SHIFT ;
 int dev_kfree_skb (int *) ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int nps_enet_is_tx_pending (struct nps_enet_priv*) ;
 int nps_enet_reg_get (struct nps_enet_priv*,int ) ;
 int nps_enet_reg_set (struct nps_enet_priv*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void nps_enet_tx_handler(struct net_device *ndev)
{
 struct nps_enet_priv *priv = netdev_priv(ndev);
 u32 tx_ctrl_value = nps_enet_reg_get(priv, NPS_ENET_REG_TX_CTL);
 u32 tx_ctrl_et = (tx_ctrl_value & TX_CTL_ET_MASK) >> TX_CTL_ET_SHIFT;
 u32 tx_ctrl_nt = (tx_ctrl_value & TX_CTL_NT_MASK) >> TX_CTL_NT_SHIFT;


 if (!nps_enet_is_tx_pending(priv))
  return;


 nps_enet_reg_set(priv, NPS_ENET_REG_TX_CTL, 0);


 if (unlikely(tx_ctrl_et)) {
  ndev->stats.tx_errors++;
 } else {
  ndev->stats.tx_packets++;
  ndev->stats.tx_bytes += tx_ctrl_nt;
 }

 dev_kfree_skb(priv->tx_skb);
 priv->tx_skb = ((void*)0);

 if (netif_queue_stopped(ndev))
  netif_wake_queue(ndev);
}
