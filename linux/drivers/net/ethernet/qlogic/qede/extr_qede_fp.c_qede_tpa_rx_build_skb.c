
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sw_rx_data {scalar_t__ page_offset; int data; } ;
struct sk_buff {int dummy; } ;
struct qede_rx_queue {scalar_t__ rx_buf_seg_size; } ;
struct qede_dev {int dummy; } ;


 int DP_NOTICE (struct qede_dev*,char*) ;
 scalar_t__ PAGE_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int page_ref_inc (int ) ;
 int qede_alloc_rx_buffer (struct qede_rx_queue*,int) ;
 struct sk_buff* qede_build_skb (struct qede_rx_queue*,struct sw_rx_data*,int ,int ) ;
 int qede_reuse_page (struct qede_rx_queue*,struct sw_rx_data*) ;
 int qede_rx_bd_ring_consume (struct qede_rx_queue*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct sk_buff *
qede_tpa_rx_build_skb(struct qede_dev *edev,
        struct qede_rx_queue *rxq,
        struct sw_rx_data *bd, u16 len, u16 pad,
        bool alloc_skb)
{
 struct sk_buff *skb;

 skb = qede_build_skb(rxq, bd, len, pad);
 bd->page_offset += rxq->rx_buf_seg_size;

 if (bd->page_offset == PAGE_SIZE) {
  if (unlikely(qede_alloc_rx_buffer(rxq, 1))) {
   DP_NOTICE(edev,
      "Failed to allocate RX buffer for tpa start\n");
   bd->page_offset -= rxq->rx_buf_seg_size;
   page_ref_inc(bd->data);
   dev_kfree_skb_any(skb);
   return ((void*)0);
  }
 } else {
  page_ref_inc(bd->data);
  qede_reuse_page(rxq, bd);
 }


 qede_rx_bd_ring_consume(rxq);

 return skb;
}
