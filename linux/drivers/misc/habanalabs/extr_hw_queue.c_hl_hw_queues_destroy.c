
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_hw_queue {int dummy; } ;
struct hl_device {struct hl_hw_queue* kernel_queues; } ;


 int HL_MAX_QUEUES ;
 int hw_queue_fini (struct hl_device*,struct hl_hw_queue*) ;
 int kfree (struct hl_hw_queue*) ;

void hl_hw_queues_destroy(struct hl_device *hdev)
{
 struct hl_hw_queue *q;
 int i;

 for (i = 0, q = hdev->kernel_queues ; i < HL_MAX_QUEUES ; i++, q++)
  hw_queue_fini(hdev, q);

 kfree(hdev->kernel_queues);
}
