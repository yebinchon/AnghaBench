
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct ag71xx_ring {int curr; int dirty; TYPE_3__* buf; int order; } ;
struct ag71xx_desc {scalar_t__ ctrl; } ;
struct ag71xx {struct net_device* ndev; struct ag71xx_ring tx_ring; } ;
struct TYPE_5__ {int * skb; scalar_t__ len; } ;
struct TYPE_6__ {TYPE_2__ tx; } ;


 int BIT (int ) ;
 int ag71xx_desc_empty (struct ag71xx_desc*) ;
 struct ag71xx_desc* ag71xx_ring_desc (struct ag71xx_ring*,size_t) ;
 int dev_kfree_skb_any (int *) ;
 int netdev_completed_queue (struct net_device*,size_t,size_t) ;
 int wmb () ;

__attribute__((used)) static void ag71xx_ring_tx_clean(struct ag71xx *ag)
{
 struct ag71xx_ring *ring = &ag->tx_ring;
 int ring_mask = BIT(ring->order) - 1;
 u32 bytes_compl = 0, pkts_compl = 0;
 struct net_device *ndev = ag->ndev;

 while (ring->curr != ring->dirty) {
  struct ag71xx_desc *desc;
  u32 i = ring->dirty & ring_mask;

  desc = ag71xx_ring_desc(ring, i);
  if (!ag71xx_desc_empty(desc)) {
   desc->ctrl = 0;
   ndev->stats.tx_errors++;
  }

  if (ring->buf[i].tx.skb) {
   bytes_compl += ring->buf[i].tx.len;
   pkts_compl++;
   dev_kfree_skb_any(ring->buf[i].tx.skb);
  }
  ring->buf[i].tx.skb = ((void*)0);
  ring->dirty++;
 }


 wmb();

 netdev_completed_queue(ndev, pkts_compl, bytes_compl);
}
