
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_device {TYPE_1__* asic_funcs; } ;
struct hl_cb {int bus_address; scalar_t__ kernel_address; int size; } ;
struct TYPE_2__ {int (* asic_dma_free_coherent ) (struct hl_device*,int ,void*,int ) ;} ;


 int kfree (struct hl_cb*) ;
 int stub1 (struct hl_device*,int ,void*,int ) ;

__attribute__((used)) static void cb_fini(struct hl_device *hdev, struct hl_cb *cb)
{
 hdev->asic_funcs->asic_dma_free_coherent(hdev, cb->size,
   (void *) (uintptr_t) cb->kernel_address,
   cb->bus_address);
 kfree(cb);
}
