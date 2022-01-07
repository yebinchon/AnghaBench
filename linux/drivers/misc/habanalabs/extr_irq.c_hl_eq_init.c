
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct hl_eq {scalar_t__ ci; scalar_t__ kernel_address; struct hl_device* hdev; int bus_address; } ;
struct hl_device {TYPE_1__* asic_funcs; } ;
struct TYPE_2__ {void* (* cpu_accessible_dma_pool_alloc ) (struct hl_device*,scalar_t__,int *) ;} ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 scalar_t__ HL_EQ_SIZE_IN_BYTES ;
 scalar_t__ HL_PAGE_SIZE ;
 void* stub1 (struct hl_device*,scalar_t__,int *) ;

int hl_eq_init(struct hl_device *hdev, struct hl_eq *q)
{
 void *p;

 BUILD_BUG_ON(HL_EQ_SIZE_IN_BYTES > HL_PAGE_SIZE);

 p = hdev->asic_funcs->cpu_accessible_dma_pool_alloc(hdev,
       HL_EQ_SIZE_IN_BYTES,
       &q->bus_address);
 if (!p)
  return -ENOMEM;

 q->hdev = hdev;
 q->kernel_address = (u64) (uintptr_t) p;
 q->ci = 0;

 return 0;
}
