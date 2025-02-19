
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct tx_ring_info {struct sk_buff* skb; } ;
struct TYPE_4__ {unsigned int packets; unsigned int bytes; int syncp; } ;
struct sky2_port {scalar_t__ tx_ring_size; scalar_t__ tx_cons; TYPE_2__ tx_stats; scalar_t__ tx_next; TYPE_1__* hw; struct tx_ring_info* tx_ring; struct net_device* netdev; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int pdev; } ;


 int BUG_ON (int) ;
 int KERN_DEBUG ;
 scalar_t__ RING_NEXT (scalar_t__,scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int netdev_completed_queue (struct net_device*,unsigned int,unsigned int) ;
 int netif_printk (struct sky2_port*,int ,int ,struct net_device*,char*,scalar_t__) ;
 int sky2_tx_unmap (int ,struct tx_ring_info*) ;
 int smp_mb () ;
 int tx_done ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void sky2_tx_complete(struct sky2_port *sky2, u16 done)
{
 struct net_device *dev = sky2->netdev;
 u16 idx;
 unsigned int bytes_compl = 0, pkts_compl = 0;

 BUG_ON(done >= sky2->tx_ring_size);

 for (idx = sky2->tx_cons; idx != done;
      idx = RING_NEXT(idx, sky2->tx_ring_size)) {
  struct tx_ring_info *re = sky2->tx_ring + idx;
  struct sk_buff *skb = re->skb;

  sky2_tx_unmap(sky2->hw->pdev, re);

  if (skb) {
   netif_printk(sky2, tx_done, KERN_DEBUG, dev,
         "tx done %u\n", idx);

   pkts_compl++;
   bytes_compl += skb->len;

   re->skb = ((void*)0);
   dev_kfree_skb_any(skb);

   sky2->tx_next = RING_NEXT(idx, sky2->tx_ring_size);
  }
 }

 sky2->tx_cons = idx;
 smp_mb();

 netdev_completed_queue(dev, pkts_compl, bytes_compl);

 u64_stats_update_begin(&sky2->tx_stats.syncp);
 sky2->tx_stats.packets += pkts_compl;
 sky2->tx_stats.bytes += bytes_compl;
 u64_stats_update_end(&sky2->tx_stats.syncp);
}
