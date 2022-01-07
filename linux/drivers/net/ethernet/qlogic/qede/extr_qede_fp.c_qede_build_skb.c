
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sw_rx_data {int page_offset; int data; } ;
struct sk_buff {int dummy; } ;
struct qede_rx_queue {int rx_buf_seg_size; } ;


 struct sk_buff* build_skb (void*,int ) ;
 void* page_address (int ) ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static inline struct sk_buff *
qede_build_skb(struct qede_rx_queue *rxq,
        struct sw_rx_data *bd, u16 len, u16 pad)
{
 struct sk_buff *skb;
 void *buf;

 buf = page_address(bd->data) + bd->page_offset;
 skb = build_skb(buf, rxq->rx_buf_seg_size);

 skb_reserve(skb, pad);
 skb_put(skb, len);

 return skb;
}
