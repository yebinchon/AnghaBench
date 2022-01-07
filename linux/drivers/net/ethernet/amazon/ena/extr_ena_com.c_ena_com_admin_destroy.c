
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ena_com_aenq {int * entries; int dma_addr; int q_depth; } ;
struct ena_com_admin_sq {int * entries; int dma_addr; } ;
struct ena_com_admin_cq {int * entries; int dma_addr; } ;
struct ena_com_admin_queue {int q_depth; int * comp_ctx; struct ena_com_admin_sq sq; struct ena_com_admin_cq cq; } ;
struct ena_com_dev {int dmadev; struct ena_com_aenq aenq; struct ena_com_admin_queue admin_queue; } ;


 int ADMIN_AENQ_SIZE (int ) ;
 int ADMIN_CQ_SIZE (int ) ;
 int ADMIN_SQ_SIZE (int ) ;
 int devm_kfree (int ,int *) ;
 int dma_free_coherent (int ,int ,int *,int ) ;

void ena_com_admin_destroy(struct ena_com_dev *ena_dev)
{
 struct ena_com_admin_queue *admin_queue = &ena_dev->admin_queue;
 struct ena_com_admin_cq *cq = &admin_queue->cq;
 struct ena_com_admin_sq *sq = &admin_queue->sq;
 struct ena_com_aenq *aenq = &ena_dev->aenq;
 u16 size;

 if (admin_queue->comp_ctx)
  devm_kfree(ena_dev->dmadev, admin_queue->comp_ctx);
 admin_queue->comp_ctx = ((void*)0);
 size = ADMIN_SQ_SIZE(admin_queue->q_depth);
 if (sq->entries)
  dma_free_coherent(ena_dev->dmadev, size, sq->entries,
      sq->dma_addr);
 sq->entries = ((void*)0);

 size = ADMIN_CQ_SIZE(admin_queue->q_depth);
 if (cq->entries)
  dma_free_coherent(ena_dev->dmadev, size, cq->entries,
      cq->dma_addr);
 cq->entries = ((void*)0);

 size = ADMIN_AENQ_SIZE(aenq->q_depth);
 if (ena_dev->aenq.entries)
  dma_free_coherent(ena_dev->dmadev, size, aenq->entries,
      aenq->dma_addr);
 aenq->entries = ((void*)0);
}
