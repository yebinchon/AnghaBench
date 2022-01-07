
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {int pagecnt_bias; int va; } ;
struct mt76_queue {int ndesc; TYPE_2__ rx_page; TYPE_1__* entry; } ;
struct mt76_dev {struct mt76_queue* q_rx; } ;
struct TYPE_3__ {int urb; } ;


 size_t MT_RXQ_MAIN ;
 int __page_frag_cache_drain (struct page*,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int mt76u_urb_free (int ) ;
 struct page* virt_to_page (int ) ;

__attribute__((used)) static void mt76u_free_rx(struct mt76_dev *dev)
{
 struct mt76_queue *q = &dev->q_rx[MT_RXQ_MAIN];
 struct page *page;
 int i;

 for (i = 0; i < q->ndesc; i++)
  mt76u_urb_free(q->entry[i].urb);

 if (!q->rx_page.va)
  return;

 page = virt_to_page(q->rx_page.va);
 __page_frag_cache_drain(page, q->rx_page.pagecnt_bias);
 memset(&q->rx_page, 0, sizeof(q->rx_page));
}
