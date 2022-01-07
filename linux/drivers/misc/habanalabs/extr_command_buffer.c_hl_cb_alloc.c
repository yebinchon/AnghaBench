
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct hl_device {int dev; TYPE_1__* asic_funcs; } ;
struct hl_cb {int size; scalar_t__ kernel_address; int bus_address; } ;
struct TYPE_2__ {void* (* asic_dma_alloc_coherent ) (struct hl_device*,int ,int *,int) ;} ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int GFP_USER ;
 int HL_KERNEL_ASID_ID ;
 int __GFP_ZERO ;
 int dev_err (int ,char*,int ) ;
 int kfree (struct hl_cb*) ;
 struct hl_cb* kzalloc (int,int) ;
 void* stub1 (struct hl_device*,int ,int *,int) ;
 void* stub2 (struct hl_device*,int ,int *,int) ;

__attribute__((used)) static struct hl_cb *hl_cb_alloc(struct hl_device *hdev, u32 cb_size,
     int ctx_id)
{
 struct hl_cb *cb;
 void *p;
 if (ctx_id == HL_KERNEL_ASID_ID)
  cb = kzalloc(sizeof(*cb), GFP_ATOMIC);
 else
  cb = kzalloc(sizeof(*cb), GFP_KERNEL);

 if (!cb)
  return ((void*)0);

 if (ctx_id == HL_KERNEL_ASID_ID)
  p = hdev->asic_funcs->asic_dma_alloc_coherent(hdev, cb_size,
      &cb->bus_address, GFP_ATOMIC);
 else
  p = hdev->asic_funcs->asic_dma_alloc_coherent(hdev, cb_size,
      &cb->bus_address,
      GFP_USER | __GFP_ZERO);
 if (!p) {
  dev_err(hdev->dev,
   "failed to allocate %d of dma memory for CB\n",
   cb_size);
  kfree(cb);
  return ((void*)0);
 }

 cb->kernel_address = (u64) (uintptr_t) p;
 cb->size = cb_size;

 return cb;
}
