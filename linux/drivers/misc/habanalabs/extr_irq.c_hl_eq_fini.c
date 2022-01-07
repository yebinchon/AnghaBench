
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_eq {scalar_t__ kernel_address; } ;
struct hl_device {TYPE_1__* asic_funcs; int eq_wq; } ;
struct TYPE_2__ {int (* cpu_accessible_dma_pool_free ) (struct hl_device*,int ,void*) ;} ;


 int HL_EQ_SIZE_IN_BYTES ;
 int flush_workqueue (int ) ;
 int stub1 (struct hl_device*,int ,void*) ;

void hl_eq_fini(struct hl_device *hdev, struct hl_eq *q)
{
 flush_workqueue(hdev->eq_wq);

 hdev->asic_funcs->cpu_accessible_dma_pool_free(hdev,
     HL_EQ_SIZE_IN_BYTES,
     (void *) (uintptr_t) q->kernel_address);
}
