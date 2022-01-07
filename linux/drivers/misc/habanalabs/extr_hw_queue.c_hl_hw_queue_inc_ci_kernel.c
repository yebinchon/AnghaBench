
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hl_hw_queue {int ci; } ;
struct hl_device {struct hl_hw_queue* kernel_queues; } ;


 int hl_queue_inc_ptr (int ) ;

void hl_hw_queue_inc_ci_kernel(struct hl_device *hdev, u32 hw_queue_id)
{
 struct hl_hw_queue *q = &hdev->kernel_queues[hw_queue_id];

 q->ci = hl_queue_inc_ptr(q->ci);
}
