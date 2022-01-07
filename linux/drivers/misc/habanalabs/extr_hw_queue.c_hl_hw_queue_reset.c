
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_hw_queue {scalar_t__ queue_type; scalar_t__ ci; scalar_t__ pi; int valid; } ;
struct hl_device {struct hl_hw_queue* kernel_queues; } ;


 int HL_MAX_QUEUES ;
 scalar_t__ QUEUE_TYPE_CPU ;

void hl_hw_queue_reset(struct hl_device *hdev, bool hard_reset)
{
 struct hl_hw_queue *q;
 int i;

 for (i = 0, q = hdev->kernel_queues ; i < HL_MAX_QUEUES ; i++, q++) {
  if ((!q->valid) ||
   ((!hard_reset) && (q->queue_type == QUEUE_TYPE_CPU)))
   continue;
  q->pi = q->ci = 0;
 }
}
