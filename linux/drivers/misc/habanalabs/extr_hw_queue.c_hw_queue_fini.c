
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_hw_queue {scalar_t__ queue_type; int bus_address; scalar_t__ kernel_address; int shadow_queue; int valid; } ;
struct hl_device {TYPE_1__* asic_funcs; } ;
struct TYPE_2__ {int (* asic_dma_free_coherent ) (struct hl_device*,int ,void*,int ) ;int (* cpu_accessible_dma_pool_free ) (struct hl_device*,int ,void*) ;} ;


 int HL_QUEUE_SIZE_IN_BYTES ;
 scalar_t__ QUEUE_TYPE_CPU ;
 scalar_t__ QUEUE_TYPE_INT ;
 int kfree (int ) ;
 int stub1 (struct hl_device*,int ,void*) ;
 int stub2 (struct hl_device*,int ,void*,int ) ;

__attribute__((used)) static void hw_queue_fini(struct hl_device *hdev, struct hl_hw_queue *q)
{
 if (!q->valid)
  return;
 if (q->queue_type == QUEUE_TYPE_INT)
  return;

 kfree(q->shadow_queue);

 if (q->queue_type == QUEUE_TYPE_CPU)
  hdev->asic_funcs->cpu_accessible_dma_pool_free(hdev,
     HL_QUEUE_SIZE_IN_BYTES,
     (void *) (uintptr_t) q->kernel_address);
 else
  hdev->asic_funcs->asic_dma_free_coherent(hdev,
     HL_QUEUE_SIZE_IN_BYTES,
     (void *) (uintptr_t) q->kernel_address,
     q->bus_address);
}
