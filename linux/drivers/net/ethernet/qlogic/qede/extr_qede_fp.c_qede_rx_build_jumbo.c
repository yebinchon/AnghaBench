
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct sw_rx_data {int data; int mapping; } ;
struct sk_buff {int len; int data_len; int truesize; } ;
struct qede_rx_queue {scalar_t__ rx_buf_size; scalar_t__ sw_rx_cons; int rx_headroom; int dev; struct sw_rx_data* sw_rx_ring; } ;
struct qede_dev {int dummy; } ;
struct eth_fast_path_rx_reg_cqe {scalar_t__ bd_num; int pkt_len; } ;
struct TYPE_2__ {int nr_frags; } ;


 int DMA_FROM_DEVICE ;
 int DP_ERR (struct qede_dev*,char*,scalar_t__) ;
 scalar_t__ NUM_RX_BDS_MAX ;
 scalar_t__ PAGE_SIZE ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ qede_alloc_rx_buffer (struct qede_rx_queue*,int) ;
 int qede_rx_bd_ring_consume (struct qede_rx_queue*) ;
 int skb_fill_page_desc (struct sk_buff*,int ,int ,int ,scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static int qede_rx_build_jumbo(struct qede_dev *edev,
          struct qede_rx_queue *rxq,
          struct sk_buff *skb,
          struct eth_fast_path_rx_reg_cqe *cqe,
          u16 first_bd_len)
{
 u16 pkt_len = le16_to_cpu(cqe->pkt_len);
 struct sw_rx_data *bd;
 u16 bd_cons_idx;
 u8 num_frags;

 pkt_len -= first_bd_len;


 for (num_frags = cqe->bd_num - 1; num_frags > 0; num_frags--) {
  u16 cur_size = pkt_len > rxq->rx_buf_size ? rxq->rx_buf_size :
      pkt_len;

  if (unlikely(!cur_size)) {
   DP_ERR(edev,
          "Still got %d BDs for mapping jumbo, but length became 0\n",
          num_frags);
   goto out;
  }


  if (unlikely(qede_alloc_rx_buffer(rxq, 1)))
   goto out;




  bd_cons_idx = rxq->sw_rx_cons & NUM_RX_BDS_MAX;
  bd = &rxq->sw_rx_ring[bd_cons_idx];
  qede_rx_bd_ring_consume(rxq);

  dma_unmap_page(rxq->dev, bd->mapping,
          PAGE_SIZE, DMA_FROM_DEVICE);

  skb_fill_page_desc(skb, skb_shinfo(skb)->nr_frags++,
       bd->data, rxq->rx_headroom, cur_size);

  skb->truesize += PAGE_SIZE;
  skb->data_len += cur_size;
  skb->len += cur_size;
  pkt_len -= cur_size;
 }

 if (unlikely(pkt_len))
  DP_ERR(edev,
         "Mapped all BDs of jumbo, but still have %d bytes\n",
         pkt_len);

out:
 return num_frags;
}
