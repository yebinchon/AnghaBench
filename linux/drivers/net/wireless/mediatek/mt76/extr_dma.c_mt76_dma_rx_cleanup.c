
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int pagecnt_bias; int va; } ;
struct mt76_queue {TYPE_1__ rx_page; int lock; } ;
struct mt76_dev {int dummy; } ;


 int __page_frag_cache_drain (struct page*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 void* mt76_dma_dequeue (struct mt76_dev*,struct mt76_queue*,int,int *,int *,int*) ;
 int skb_free_frag (void*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct page* virt_to_page (int ) ;

__attribute__((used)) static void
mt76_dma_rx_cleanup(struct mt76_dev *dev, struct mt76_queue *q)
{
 struct page *page;
 void *buf;
 bool more;

 spin_lock_bh(&q->lock);
 do {
  buf = mt76_dma_dequeue(dev, q, 1, ((void*)0), ((void*)0), &more);
  if (!buf)
   break;

  skb_free_frag(buf);
 } while (1);
 spin_unlock_bh(&q->lock);

 if (!q->rx_page.va)
  return;

 page = virt_to_page(q->rx_page.va);
 __page_frag_cache_drain(page, q->rx_page.pagecnt_bias);
 memset(&q->rx_page, 0, sizeof(q->rx_page));
}
