
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; int data; } ;
struct lan743x_tx {int ring_size; int ts_flags; int ring_lock; TYPE_2__* adapter; struct sk_buff* overflow_skb; } ;
typedef int skb_frag_t ;
typedef int netdev_tx_t ;
struct TYPE_4__ {int netdev; } ;
struct TYPE_3__ {int tx_flags; int nr_frags; int * frags; int gso_size; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int NETDEV_TX_OK ;
 int SKBTX_HW_TSTAMP ;
 int SKBTX_IN_PROGRESS ;
 int TX_TS_FLAG_ONE_STEP_SYNC ;
 int TX_TS_FLAG_TIMESTAMPING_ENABLED ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ lan743x_ptp_request_tx_timestamp (TYPE_2__*) ;
 scalar_t__ lan743x_tx_frame_add_fragment (struct lan743x_tx*,int const*,unsigned int) ;
 int lan743x_tx_frame_add_lso (struct lan743x_tx*,unsigned int,int) ;
 int lan743x_tx_frame_end (struct lan743x_tx*,struct sk_buff*,int,int) ;
 scalar_t__ lan743x_tx_frame_start (struct lan743x_tx*,int ,unsigned int,unsigned int,int,int) ;
 int lan743x_tx_get_avail_desc (struct lan743x_tx*) ;
 int lan743x_tx_get_desc_cnt (struct lan743x_tx*,struct sk_buff*) ;
 unsigned int max (int ,unsigned short) ;
 int netif_stop_queue (int ) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 unsigned int skb_pagelen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t lan743x_tx_xmit_frame(struct lan743x_tx *tx,
      struct sk_buff *skb)
{
 int required_number_of_descriptors = 0;
 unsigned int start_frame_length = 0;
 unsigned int frame_length = 0;
 unsigned int head_length = 0;
 unsigned long irq_flags = 0;
 bool do_timestamp = 0;
 bool ignore_sync = 0;
 int nr_frags = 0;
 bool gso = 0;
 int j;

 required_number_of_descriptors = lan743x_tx_get_desc_cnt(tx, skb);

 spin_lock_irqsave(&tx->ring_lock, irq_flags);
 if (required_number_of_descriptors >
  lan743x_tx_get_avail_desc(tx)) {
  if (required_number_of_descriptors > (tx->ring_size - 1)) {
   dev_kfree_skb(skb);
  } else {

   tx->overflow_skb = skb;
   netif_stop_queue(tx->adapter->netdev);
  }
  goto unlock;
 }


 if ((skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
     (tx->ts_flags & TX_TS_FLAG_TIMESTAMPING_ENABLED) &&
     (lan743x_ptp_request_tx_timestamp(tx->adapter))) {
  skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
  do_timestamp = 1;
  if (tx->ts_flags & TX_TS_FLAG_ONE_STEP_SYNC)
   ignore_sync = 1;
 }
 head_length = skb_headlen(skb);
 frame_length = skb_pagelen(skb);
 nr_frags = skb_shinfo(skb)->nr_frags;
 start_frame_length = frame_length;
 gso = skb_is_gso(skb);
 if (gso) {
  start_frame_length = max(skb_shinfo(skb)->gso_size,
      (unsigned short)8);
 }

 if (lan743x_tx_frame_start(tx,
       skb->data, head_length,
       start_frame_length,
       do_timestamp,
       skb->ip_summed == CHECKSUM_PARTIAL)) {
  dev_kfree_skb(skb);
  goto unlock;
 }

 if (gso)
  lan743x_tx_frame_add_lso(tx, frame_length, nr_frags);

 if (nr_frags <= 0)
  goto finish;

 for (j = 0; j < nr_frags; j++) {
  const skb_frag_t *frag = &(skb_shinfo(skb)->frags[j]);

  if (lan743x_tx_frame_add_fragment(tx, frag, frame_length)) {





   dev_kfree_skb(skb);
   goto unlock;
  }
 }

finish:
 lan743x_tx_frame_end(tx, skb, do_timestamp, ignore_sync);

unlock:
 spin_unlock_irqrestore(&tx->ring_lock, irq_flags);
 return NETDEV_TX_OK;
}
