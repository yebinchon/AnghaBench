
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {unsigned int queue_mapping; scalar_t__ len; } ;
struct TYPE_8__ {int bytes; int packets; } ;
struct TYPE_9__ {TYPE_3__ tx; } ;
struct aq_ring_s {TYPE_4__ stats; int idx; } ;
struct TYPE_6__ {unsigned int vecs; } ;
struct aq_nic_s {int aq_hw; TYPE_2__* aq_hw_ops; int ndev; struct aq_ring_s** aq_ring_tx; TYPE_1__ aq_nic_cfg; } ;
struct TYPE_10__ {int nr_frags; } ;
struct TYPE_7__ {int (* hw_ring_tx_xmit ) (int ,struct aq_ring_s*,unsigned int) ;} ;


 unsigned int AQ_CFG_SKB_FRAGS_MAX ;
 size_t AQ_NIC_TCVEC2RING (struct aq_nic_s*,unsigned int,unsigned int) ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ __netif_subqueue_stopped (int ,int ) ;
 unsigned int aq_nic_map_skb (struct aq_nic_s*,struct sk_buff*,struct aq_ring_s*) ;
 int aq_ring_update_queue_state (struct aq_ring_s*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ likely (unsigned int) ;
 TYPE_5__* skb_shinfo (struct sk_buff*) ;
 int stub1 (int ,struct aq_ring_s*,unsigned int) ;

int aq_nic_xmit(struct aq_nic_s *self, struct sk_buff *skb)
{
 struct aq_ring_s *ring = ((void*)0);
 unsigned int frags = 0U;
 unsigned int vec = skb->queue_mapping % self->aq_nic_cfg.vecs;
 unsigned int tc = 0U;
 int err = NETDEV_TX_OK;

 frags = skb_shinfo(skb)->nr_frags + 1;

 ring = self->aq_ring_tx[AQ_NIC_TCVEC2RING(self, tc, vec)];

 if (frags > AQ_CFG_SKB_FRAGS_MAX) {
  dev_kfree_skb_any(skb);
  goto err_exit;
 }

 aq_ring_update_queue_state(ring);


 if (__netif_subqueue_stopped(self->ndev, ring->idx)) {
  err = NETDEV_TX_BUSY;
  goto err_exit;
 }

 frags = aq_nic_map_skb(self, skb, ring);

 if (likely(frags)) {
  err = self->aq_hw_ops->hw_ring_tx_xmit(self->aq_hw,
             ring, frags);
  if (err >= 0) {
   ++ring->stats.tx.packets;
   ring->stats.tx.bytes += skb->len;
  }
 } else {
  err = NETDEV_TX_BUSY;
 }

err_exit:
 return err;
}
