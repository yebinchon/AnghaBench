
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; } ;


 int TASK_UNINTERRUPTIBLE ;
 int UNLINK_TIMEOUT_MS ;
 int msecs_to_jiffies (int ) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void wait_skb_queue_empty(struct sk_buff_head *q)
{
 unsigned long flags;

 spin_lock_irqsave(&q->lock, flags);
 while (!skb_queue_empty(q)) {
  spin_unlock_irqrestore(&q->lock, flags);
  schedule_timeout(msecs_to_jiffies(UNLINK_TIMEOUT_MS));
  set_current_state(TASK_UNINTERRUPTIBLE);
  spin_lock_irqsave(&q->lock, flags);
 }
 spin_unlock_irqrestore(&q->lock, flags);
}
