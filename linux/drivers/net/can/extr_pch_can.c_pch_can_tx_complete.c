
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pch_can_priv {TYPE_3__* regs; TYPE_1__* ndev; } ;
struct net_device_stats {int tx_packets; int tx_bytes; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ifregs; } ;
struct TYPE_5__ {int mcont; int creq; int cmask; } ;
struct TYPE_4__ {struct net_device_stats stats; } ;


 int PCH_CMASK_CLRINTPND ;
 int PCH_CMASK_RX_TX_GET ;
 int PCH_IF_MCONT_DLC ;
 scalar_t__ PCH_RX_OBJ_END ;
 scalar_t__ PCH_TX_OBJ_END ;
 int can_get_echo_skb (struct net_device*,scalar_t__) ;
 scalar_t__ get_can_dlc (int) ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;
 struct pch_can_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pch_can_rw_msg_obj (int *,scalar_t__) ;

__attribute__((used)) static void pch_can_tx_complete(struct net_device *ndev, u32 int_stat)
{
 struct pch_can_priv *priv = netdev_priv(ndev);
 struct net_device_stats *stats = &(priv->ndev->stats);
 u32 dlc;

 can_get_echo_skb(ndev, int_stat - PCH_RX_OBJ_END - 1);
 iowrite32(PCH_CMASK_RX_TX_GET | PCH_CMASK_CLRINTPND,
    &priv->regs->ifregs[1].cmask);
 pch_can_rw_msg_obj(&priv->regs->ifregs[1].creq, int_stat);
 dlc = get_can_dlc(ioread32(&priv->regs->ifregs[1].mcont) &
     PCH_IF_MCONT_DLC);
 stats->tx_bytes += dlc;
 stats->tx_packets++;
 if (int_stat == PCH_TX_OBJ_END)
  netif_wake_queue(ndev);
}
