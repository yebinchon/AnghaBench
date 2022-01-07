
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ena_com_admin_cq {int phase; scalar_t__ head; int entries; int dma_addr; } ;
struct ena_com_admin_queue {int q_dmadev; int q_depth; struct ena_com_admin_cq cq; } ;


 int ADMIN_CQ_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int ena_com_admin_init_cq(struct ena_com_admin_queue *queue)
{
 struct ena_com_admin_cq *cq = &queue->cq;
 u16 size = ADMIN_CQ_SIZE(queue->q_depth);

 cq->entries = dma_alloc_coherent(queue->q_dmadev, size, &cq->dma_addr,
      GFP_KERNEL);

 if (!cq->entries) {
  pr_err("memory allocation failed\n");
  return -ENOMEM;
 }

 cq->head = 0;
 cq->phase = 1;

 return 0;
}
