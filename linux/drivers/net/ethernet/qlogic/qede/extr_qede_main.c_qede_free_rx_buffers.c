
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct sw_rx_data {struct page* data; int mapping; } ;
struct qede_rx_queue {size_t sw_rx_cons; size_t sw_rx_prod; int data_direction; struct sw_rx_data* sw_rx_ring; } ;
struct qede_dev {TYPE_1__* pdev; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 size_t NUM_RX_BDS_MAX ;
 int PAGE_SIZE ;
 int __free_page (struct page*) ;
 int dma_unmap_page (int *,int ,int ,int ) ;

__attribute__((used)) static void qede_free_rx_buffers(struct qede_dev *edev,
     struct qede_rx_queue *rxq)
{
 u16 i;

 for (i = rxq->sw_rx_cons; i != rxq->sw_rx_prod; i++) {
  struct sw_rx_data *rx_buf;
  struct page *data;

  rx_buf = &rxq->sw_rx_ring[i & NUM_RX_BDS_MAX];
  data = rx_buf->data;

  dma_unmap_page(&edev->pdev->dev,
          rx_buf->mapping, PAGE_SIZE, rxq->data_direction);

  rx_buf->data = ((void*)0);
  __free_page(data);
 }
}
