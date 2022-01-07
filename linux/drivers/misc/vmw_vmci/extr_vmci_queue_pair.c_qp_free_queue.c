
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u64 ;
struct vmci_queue {TYPE_2__* kernel_if; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_5__ {int * pas; int * vas; } ;
struct TYPE_7__ {TYPE_1__ g; } ;
struct TYPE_6__ {TYPE_3__ u; } ;


 size_t DIV_ROUND_UP (size_t,int ) ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int vfree (struct vmci_queue*) ;
 TYPE_4__* vmci_pdev ;

__attribute__((used)) static void qp_free_queue(void *q, u64 size)
{
 struct vmci_queue *queue = q;

 if (queue) {
  u64 i;


  for (i = 0; i < DIV_ROUND_UP(size, PAGE_SIZE) + 1; i++) {
   dma_free_coherent(&vmci_pdev->dev, PAGE_SIZE,
       queue->kernel_if->u.g.vas[i],
       queue->kernel_if->u.g.pas[i]);
  }

  vfree(queue);
 }
}
