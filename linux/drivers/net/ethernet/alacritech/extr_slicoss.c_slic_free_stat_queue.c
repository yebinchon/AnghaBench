
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slic_stat_queue {scalar_t__* addr_offset; scalar_t__* paddr; scalar_t__* descs; int mem_size; } ;
struct slic_device {TYPE_1__* pdev; struct slic_stat_queue stq; } ;
struct TYPE_2__ {int dev; } ;


 int SLIC_NUM_STAT_DESC_ARRAYS ;
 int dma_free_coherent (int *,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void slic_free_stat_queue(struct slic_device *sdev)
{
 struct slic_stat_queue *stq = &sdev->stq;
 int i;

 for (i = 0; i < SLIC_NUM_STAT_DESC_ARRAYS; i++) {
  dma_free_coherent(&sdev->pdev->dev, stq->mem_size,
      stq->descs[i] - stq->addr_offset[i],
      stq->paddr[i] - stq->addr_offset[i]);
 }
}
