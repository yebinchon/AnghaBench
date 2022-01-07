
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sw_rx_data {int data; int page_offset; } ;
struct sk_buff {int dummy; } ;
struct qede_rx_queue {int dummy; } ;
struct qede_dev {scalar_t__ rx_copybreak; int ndev; } ;


 int QEDE_RX_HDR_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (int ,int ) ;
 scalar_t__ page_address (int ) ;
 int page_ref_inc (int ) ;
 struct sk_buff* qede_build_skb (struct qede_rx_queue*,struct sw_rx_data*,scalar_t__,scalar_t__) ;
 int qede_realloc_rx_buffer (struct qede_rx_queue*,struct sw_rx_data*) ;
 int qede_reuse_page (struct qede_rx_queue*,struct sw_rx_data*) ;
 int qede_rx_bd_ring_consume (struct qede_rx_queue*) ;
 int skb_put_data (struct sk_buff*,scalar_t__,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *
qede_rx_build_skb(struct qede_dev *edev,
    struct qede_rx_queue *rxq,
    struct sw_rx_data *bd, u16 len, u16 pad)
{
 struct sk_buff *skb = ((void*)0);





 if ((len + pad <= edev->rx_copybreak)) {
  unsigned int offset = bd->page_offset + pad;

  skb = netdev_alloc_skb(edev->ndev, QEDE_RX_HDR_SIZE);
  if (unlikely(!skb))
   return ((void*)0);

  skb_reserve(skb, pad);
  skb_put_data(skb, page_address(bd->data) + offset, len);
  qede_reuse_page(rxq, bd);
  goto out;
 }

 skb = qede_build_skb(rxq, bd, len, pad);

 if (unlikely(qede_realloc_rx_buffer(rxq, bd))) {




  page_ref_inc(bd->data);
  dev_kfree_skb_any(skb);
  return ((void*)0);
 }
out:

 qede_rx_bd_ring_consume(rxq);

 return skb;
}
