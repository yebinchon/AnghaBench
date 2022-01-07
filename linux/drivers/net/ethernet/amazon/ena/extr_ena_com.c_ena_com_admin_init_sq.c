
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ena_com_admin_sq {int phase; int * db_addr; scalar_t__ tail; scalar_t__ head; int entries; int dma_addr; } ;
struct ena_com_admin_queue {int q_dmadev; int q_depth; struct ena_com_admin_sq sq; } ;


 int ADMIN_SQ_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int ena_com_admin_init_sq(struct ena_com_admin_queue *queue)
{
 struct ena_com_admin_sq *sq = &queue->sq;
 u16 size = ADMIN_SQ_SIZE(queue->q_depth);

 sq->entries = dma_alloc_coherent(queue->q_dmadev, size, &sq->dma_addr,
      GFP_KERNEL);

 if (!sq->entries) {
  pr_err("memory allocation failed\n");
  return -ENOMEM;
 }

 sq->head = 0;
 sq->tail = 0;
 sq->phase = 1;

 sq->db_addr = ((void*)0);

 return 0;
}
