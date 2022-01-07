
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct hl_device {TYPE_1__* asic_funcs; } ;
struct hl_cq {int free_slots_cnt; scalar_t__ pi; scalar_t__ ci; int hw_queue_id; scalar_t__ kernel_address; struct hl_device* hdev; int bus_address; } ;
struct TYPE_2__ {void* (* asic_dma_alloc_coherent ) (struct hl_device*,scalar_t__,int *,int) ;} ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HL_CQ_LENGTH ;
 scalar_t__ HL_CQ_SIZE_IN_BYTES ;
 scalar_t__ HL_PAGE_SIZE ;
 int __GFP_ZERO ;
 int atomic_set (int *,int ) ;
 void* stub1 (struct hl_device*,scalar_t__,int *,int) ;

int hl_cq_init(struct hl_device *hdev, struct hl_cq *q, u32 hw_queue_id)
{
 void *p;

 BUILD_BUG_ON(HL_CQ_SIZE_IN_BYTES > HL_PAGE_SIZE);

 p = hdev->asic_funcs->asic_dma_alloc_coherent(hdev, HL_CQ_SIZE_IN_BYTES,
    &q->bus_address, GFP_KERNEL | __GFP_ZERO);
 if (!p)
  return -ENOMEM;

 q->hdev = hdev;
 q->kernel_address = (u64) (uintptr_t) p;
 q->hw_queue_id = hw_queue_id;
 q->ci = 0;
 q->pi = 0;

 atomic_set(&q->free_slots_cnt, HL_CQ_LENGTH);

 return 0;
}
