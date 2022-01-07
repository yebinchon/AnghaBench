
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int tx_errors; } ;
struct TYPE_5__ {TYPE_1__ gen; } ;
struct TYPE_6__ {scalar_t__ QueueSkb; int SendSkbQueue; TYPE_2__ MacStat; } ;
struct s_smc {TYPE_3__ os; } ;
struct net_device {int dummy; } ;
typedef TYPE_3__ skfddi_priv ;
typedef int netdev_tx_t ;


 scalar_t__ FDDI_K_LLC_LEN ;
 scalar_t__ FDDI_K_LLC_ZLEN ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct s_smc* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pr_debug (char*) ;
 int send_queued_packets (struct s_smc*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t skfp_send_pkt(struct sk_buff *skb,
           struct net_device *dev)
{
 struct s_smc *smc = netdev_priv(dev);
 skfddi_priv *bp = &smc->os;

 pr_debug("skfp_send_pkt\n");
 if (!(skb->len >= FDDI_K_LLC_ZLEN && skb->len <= FDDI_K_LLC_LEN)) {
  bp->MacStat.gen.tx_errors++;

  netif_start_queue(dev);
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }
 if (bp->QueueSkb == 0) {

  netif_stop_queue(dev);
  return NETDEV_TX_BUSY;
 }
 bp->QueueSkb--;
 skb_queue_tail(&bp->SendSkbQueue, skb);
 send_queued_packets(netdev_priv(dev));
 if (bp->QueueSkb == 0) {
  netif_stop_queue(dev);
 }
 return NETDEV_TX_OK;

}
