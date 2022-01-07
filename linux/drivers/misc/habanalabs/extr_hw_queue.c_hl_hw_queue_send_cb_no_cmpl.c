
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct hl_hw_queue {scalar_t__ queue_type; } ;
struct hl_device {TYPE_1__* asic_funcs; scalar_t__ disabled; struct hl_hw_queue* kernel_queues; } ;
struct TYPE_2__ {int (* hw_queues_unlock ) (struct hl_device*) ;int (* hw_queues_lock ) (struct hl_device*) ;} ;


 int EPERM ;
 scalar_t__ QUEUE_TYPE_CPU ;
 int ext_queue_sanity_checks (struct hl_device*,struct hl_hw_queue*,int,int) ;
 int ext_queue_submit_bd (struct hl_device*,struct hl_hw_queue*,int ,size_t,int ) ;
 int stub1 (struct hl_device*) ;
 int stub2 (struct hl_device*) ;

int hl_hw_queue_send_cb_no_cmpl(struct hl_device *hdev, u32 hw_queue_id,
    u32 cb_size, u64 cb_ptr)
{
 struct hl_hw_queue *q = &hdev->kernel_queues[hw_queue_id];
 int rc;
 if (q->queue_type != QUEUE_TYPE_CPU)
  hdev->asic_funcs->hw_queues_lock(hdev);

 if (hdev->disabled) {
  rc = -EPERM;
  goto out;
 }

 rc = ext_queue_sanity_checks(hdev, q, 1, 0);
 if (rc)
  goto out;

 ext_queue_submit_bd(hdev, q, 0, cb_size, cb_ptr);

out:
 if (q->queue_type != QUEUE_TYPE_CPU)
  hdev->asic_funcs->hw_queues_unlock(hdev);

 return rc;
}
