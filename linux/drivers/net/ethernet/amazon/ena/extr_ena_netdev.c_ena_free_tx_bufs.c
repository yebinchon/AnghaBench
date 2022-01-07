
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ena_tx_buffer {int skb; } ;
struct ena_ring {size_t ring_size; int qid; int netdev; struct ena_tx_buffer* tx_buffer_info; } ;


 int dev_kfree_skb_any (int ) ;
 int ena_unmap_tx_skb (struct ena_ring*,struct ena_tx_buffer*) ;
 int netdev_dbg (int ,char*,int ,size_t) ;
 int netdev_get_tx_queue (int ,int ) ;
 int netdev_notice (int ,char*,int ,size_t) ;
 int netdev_tx_reset_queue (int ) ;

__attribute__((used)) static void ena_free_tx_bufs(struct ena_ring *tx_ring)
{
 bool print_once = 1;
 u32 i;

 for (i = 0; i < tx_ring->ring_size; i++) {
  struct ena_tx_buffer *tx_info = &tx_ring->tx_buffer_info[i];

  if (!tx_info->skb)
   continue;

  if (print_once) {
   netdev_notice(tx_ring->netdev,
          "free uncompleted tx skb qid %d idx 0x%x\n",
          tx_ring->qid, i);
   print_once = 0;
  } else {
   netdev_dbg(tx_ring->netdev,
       "free uncompleted tx skb qid %d idx 0x%x\n",
       tx_ring->qid, i);
  }

  ena_unmap_tx_skb(tx_ring, tx_info);

  dev_kfree_skb_any(tx_info->skb);
 }
 netdev_tx_reset_queue(netdev_get_tx_queue(tx_ring->netdev,
        tx_ring->qid));
}
