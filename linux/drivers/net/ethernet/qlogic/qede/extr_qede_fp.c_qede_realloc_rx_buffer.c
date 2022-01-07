
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_rx_data {scalar_t__ page_offset; int data; int mapping; } ;
struct qede_rx_queue {scalar_t__ rx_buf_seg_size; int data_direction; int dev; } ;


 int ENOMEM ;
 scalar_t__ PAGE_SIZE ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 int page_ref_inc (int ) ;
 int qede_alloc_rx_buffer (struct qede_rx_queue*,int) ;
 int qede_reuse_page (struct qede_rx_queue*,struct sw_rx_data*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int qede_realloc_rx_buffer(struct qede_rx_queue *rxq,
      struct sw_rx_data *curr_cons)
{

 curr_cons->page_offset += rxq->rx_buf_seg_size;

 if (curr_cons->page_offset == PAGE_SIZE) {
  if (unlikely(qede_alloc_rx_buffer(rxq, 1))) {



   curr_cons->page_offset -= rxq->rx_buf_seg_size;

   return -ENOMEM;
  }

  dma_unmap_page(rxq->dev, curr_cons->mapping,
          PAGE_SIZE, rxq->data_direction);
 } else {




  page_ref_inc(curr_cons->data);
  qede_reuse_page(rxq, curr_cons);
 }

 return 0;
}
