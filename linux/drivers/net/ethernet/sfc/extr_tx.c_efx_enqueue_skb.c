
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int len; scalar_t__ data_len; } ;
struct efx_tx_queue {unsigned int insert_count; int (* handle_tso ) (struct efx_tx_queue*,struct sk_buff*,int*) ;int xmit_more_available; unsigned int tso_packets; scalar_t__ tx_packets; int tso_bursts; int core_txq; int cb_packets; int pio_packets; int tso_fallbacks; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {unsigned int gso_segs; } ;


 unsigned int EFX_TX_CB_SIZE ;
 int EFX_WARN_ON_ONCE_PARANOID (int) ;
 int EINVAL ;
 int NETDEV_TX_OK ;
 scalar_t__ __netdev_tx_sent_queue (int ,unsigned int,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ efx_enqueue_skb_copy (struct efx_tx_queue*,struct sk_buff*) ;
 scalar_t__ efx_enqueue_skb_pio (struct efx_tx_queue*,struct sk_buff*) ;
 int efx_enqueue_unwind (struct efx_tx_queue*,unsigned int) ;
 scalar_t__ efx_nic_may_tx_pio (struct efx_tx_queue*) ;
 int efx_nic_push_buffers (struct efx_tx_queue*) ;
 unsigned int efx_piobuf_size ;
 scalar_t__ efx_tx_map_data (struct efx_tx_queue*,struct sk_buff*,unsigned int) ;
 int efx_tx_maybe_stop_queue (struct efx_tx_queue*) ;
 struct efx_tx_queue* efx_tx_queue_partner (struct efx_tx_queue*) ;
 int efx_tx_tso_fallback (struct efx_tx_queue*,struct sk_buff*) ;
 int netdev_xmit_more () ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int stub1 (struct efx_tx_queue*,struct sk_buff*,int*) ;

netdev_tx_t efx_enqueue_skb(struct efx_tx_queue *tx_queue, struct sk_buff *skb)
{
 unsigned int old_insert_count = tx_queue->insert_count;
 bool xmit_more = netdev_xmit_more();
 bool data_mapped = 0;
 unsigned int segments;
 unsigned int skb_len;
 int rc;

 skb_len = skb->len;
 segments = skb_is_gso(skb) ? skb_shinfo(skb)->gso_segs : 0;
 if (segments == 1)
  segments = 0;





 if (segments) {
  EFX_WARN_ON_ONCE_PARANOID(!tx_queue->handle_tso);
  rc = tx_queue->handle_tso(tx_queue, skb, &data_mapped);
  if (rc == -EINVAL) {
   rc = efx_tx_tso_fallback(tx_queue, skb);
   tx_queue->tso_fallbacks++;
   if (rc == 0)
    return 0;
  }
  if (rc)
   goto err;
 } else if (skb->data_len && skb_len <= EFX_TX_CB_SIZE) {

  if (efx_enqueue_skb_copy(tx_queue, skb))
   goto err;
  tx_queue->cb_packets++;
  data_mapped = 1;
 }


 if (!data_mapped && (efx_tx_map_data(tx_queue, skb, segments)))
  goto err;

 efx_tx_maybe_stop_queue(tx_queue);


 if (__netdev_tx_sent_queue(tx_queue->core_txq, skb_len, xmit_more)) {
  struct efx_tx_queue *txq2 = efx_tx_queue_partner(tx_queue);





  if (txq2->xmit_more_available)
   efx_nic_push_buffers(txq2);

  efx_nic_push_buffers(tx_queue);
 } else {
  tx_queue->xmit_more_available = xmit_more;
 }

 if (segments) {
  tx_queue->tso_bursts++;
  tx_queue->tso_packets += segments;
  tx_queue->tx_packets += segments;
 } else {
  tx_queue->tx_packets++;
 }

 return NETDEV_TX_OK;


err:
 efx_enqueue_unwind(tx_queue, old_insert_count);
 dev_kfree_skb_any(skb);





 if (!xmit_more) {
  struct efx_tx_queue *txq2 = efx_tx_queue_partner(tx_queue);

  if (txq2->xmit_more_available)
   efx_nic_push_buffers(txq2);

  efx_nic_push_buffers(tx_queue);
 }

 return NETDEV_TX_OK;
}
