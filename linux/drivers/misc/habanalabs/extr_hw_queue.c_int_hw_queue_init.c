
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct hl_hw_queue {scalar_t__ ci; scalar_t__ pi; scalar_t__ kernel_address; int hw_queue_id; int int_queue_len; int bus_address; } ;
struct hl_device {int dev; TYPE_1__* asic_funcs; } ;
struct TYPE_2__ {void* (* get_int_queue_base ) (struct hl_device*,int ,int *,int *) ;} ;


 int EFAULT ;
 int dev_err (int ,char*,int ) ;
 void* stub1 (struct hl_device*,int ,int *,int *) ;

__attribute__((used)) static int int_hw_queue_init(struct hl_device *hdev, struct hl_hw_queue *q)
{
 void *p;

 p = hdev->asic_funcs->get_int_queue_base(hdev, q->hw_queue_id,
     &q->bus_address, &q->int_queue_len);
 if (!p) {
  dev_err(hdev->dev,
   "Failed to get base address for internal queue %d\n",
   q->hw_queue_id);
  return -EFAULT;
 }

 q->kernel_address = (u64) (uintptr_t) p;
 q->pi = 0;
 q->ci = 0;

 return 0;
}
