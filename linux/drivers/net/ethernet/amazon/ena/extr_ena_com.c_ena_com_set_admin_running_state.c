
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_admin_queue {int running_state; int q_lock; } ;
struct ena_com_dev {struct ena_com_admin_queue admin_queue; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ena_com_set_admin_running_state(struct ena_com_dev *ena_dev, bool state)
{
 struct ena_com_admin_queue *admin_queue = &ena_dev->admin_queue;
 unsigned long flags = 0;

 spin_lock_irqsave(&admin_queue->q_lock, flags);
 ena_dev->admin_queue.running_state = state;
 spin_unlock_irqrestore(&admin_queue->q_lock, flags);
}
