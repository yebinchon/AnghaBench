
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_admin_queue {int q_lock; int outstanding_cmds; } ;
struct ena_com_dev {struct ena_com_admin_queue admin_queue; } ;


 int ENA_POLL_MS ;
 scalar_t__ atomic_read (int *) ;
 int msleep (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ena_com_wait_for_abort_completion(struct ena_com_dev *ena_dev)
{
 struct ena_com_admin_queue *admin_queue = &ena_dev->admin_queue;
 unsigned long flags = 0;

 spin_lock_irqsave(&admin_queue->q_lock, flags);
 while (atomic_read(&admin_queue->outstanding_cmds) != 0) {
  spin_unlock_irqrestore(&admin_queue->q_lock, flags);
  msleep(ENA_POLL_MS);
  spin_lock_irqsave(&admin_queue->q_lock, flags);
 }
 spin_unlock_irqrestore(&admin_queue->q_lock, flags);
}
