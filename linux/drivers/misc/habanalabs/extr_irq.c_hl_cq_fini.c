
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_device {TYPE_1__* asic_funcs; } ;
struct hl_cq {int bus_address; scalar_t__ kernel_address; } ;
struct TYPE_2__ {int (* asic_dma_free_coherent ) (struct hl_device*,int ,void*,int ) ;} ;


 int HL_CQ_SIZE_IN_BYTES ;
 int stub1 (struct hl_device*,int ,void*,int ) ;

void hl_cq_fini(struct hl_device *hdev, struct hl_cq *q)
{
 hdev->asic_funcs->asic_dma_free_coherent(hdev, HL_CQ_SIZE_IN_BYTES,
   (void *) (uintptr_t) q->kernel_address, q->bus_address);
}
