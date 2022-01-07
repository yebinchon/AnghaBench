
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; scalar_t__ data_len; } ;
struct ef4_tx_queue {unsigned int tx_min_size; int tx_packets; scalar_t__ xmit_more_available; int core_txq; int cb_packets; } ;
typedef int netdev_tx_t ;


 unsigned int EF4_TX_CB_SIZE ;
 int EF4_WARN_ON_PARANOID (int ) ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ ef4_enqueue_skb_copy (struct ef4_tx_queue*,struct sk_buff*) ;
 int ef4_enqueue_unwind (struct ef4_tx_queue*) ;
 int ef4_nic_push_buffers (struct ef4_tx_queue*) ;
 scalar_t__ ef4_tx_map_data (struct ef4_tx_queue*,struct sk_buff*) ;
 int ef4_tx_maybe_stop_queue (struct ef4_tx_queue*) ;
 struct ef4_tx_queue* ef4_tx_queue_partner (struct ef4_tx_queue*) ;
 int netdev_tx_sent_queue (int ,unsigned int) ;
 scalar_t__ netdev_xmit_more () ;
 scalar_t__ netif_xmit_stopped (int ) ;
 int skb_is_gso (struct sk_buff*) ;

netdev_tx_t ef4_enqueue_skb(struct ef4_tx_queue *tx_queue, struct sk_buff *skb)
{
 bool data_mapped = 0;
 unsigned int skb_len;

 skb_len = skb->len;
 EF4_WARN_ON_PARANOID(skb_is_gso(skb));

 if (skb_len < tx_queue->tx_min_size ||
   (skb->data_len && skb_len <= EF4_TX_CB_SIZE)) {

  if (ef4_enqueue_skb_copy(tx_queue, skb))
   goto err;
  tx_queue->cb_packets++;
  data_mapped = 1;
 }


 if (!data_mapped && (ef4_tx_map_data(tx_queue, skb)))
  goto err;


 netdev_tx_sent_queue(tx_queue->core_txq, skb_len);


 if (!netdev_xmit_more() || netif_xmit_stopped(tx_queue->core_txq)) {
  struct ef4_tx_queue *txq2 = ef4_tx_queue_partner(tx_queue);





  if (txq2->xmit_more_available)
   ef4_nic_push_buffers(txq2);

  ef4_nic_push_buffers(tx_queue);
 } else {
  tx_queue->xmit_more_available = netdev_xmit_more();
 }

 tx_queue->tx_packets++;

 ef4_tx_maybe_stop_queue(tx_queue);

 return NETDEV_TX_OK;


err:
 ef4_enqueue_unwind(tx_queue);
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
