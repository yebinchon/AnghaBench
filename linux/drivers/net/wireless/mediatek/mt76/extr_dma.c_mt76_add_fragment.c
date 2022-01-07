
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct mt76_queue {struct sk_buff* rx_head; int buf_size; scalar_t__ buf_offset; } ;
struct mt76_dev {int q_rx; TYPE_1__* drv; } ;
struct TYPE_4__ {int nr_frags; } ;
struct TYPE_3__ {int (* rx_skb ) (struct mt76_dev*,struct mt76_queue*,struct sk_buff*) ;} ;


 void* page_address (struct page*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,struct page*,int,int,int ) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int stub1 (struct mt76_dev*,struct mt76_queue*,struct sk_buff*) ;
 struct page* virt_to_head_page (void*) ;

__attribute__((used)) static void
mt76_add_fragment(struct mt76_dev *dev, struct mt76_queue *q, void *data,
    int len, bool more)
{
 struct page *page = virt_to_head_page(data);
 int offset = data - page_address(page);
 struct sk_buff *skb = q->rx_head;

 offset += q->buf_offset;
 skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page, offset, len,
   q->buf_size);

 if (more)
  return;

 q->rx_head = ((void*)0);
 dev->drv->rx_skb(dev, q - dev->q_rx, skb);
}
