
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {int io_queue_stopped; int q_lock; int * req; int io_queue; int cache_flush_timer; int queue; } ;
struct memstick_dev {int dummy; } ;


 int blk_mq_requeue_request (int *,int) ;
 int blk_mq_stop_hw_queues (int ) ;
 int dbg (char*) ;
 int del_timer_sync (int *) ;
 int flush_workqueue (int ) ;
 struct msb_data* memstick_get_drvdata (struct memstick_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void msb_stop(struct memstick_dev *card)
{
 struct msb_data *msb = memstick_get_drvdata(card);
 unsigned long flags;

 dbg("Stopping all msblock IO");

 blk_mq_stop_hw_queues(msb->queue);
 spin_lock_irqsave(&msb->q_lock, flags);
 msb->io_queue_stopped = 1;
 spin_unlock_irqrestore(&msb->q_lock, flags);

 del_timer_sync(&msb->cache_flush_timer);
 flush_workqueue(msb->io_queue);

 spin_lock_irqsave(&msb->q_lock, flags);
 if (msb->req) {
  blk_mq_requeue_request(msb->req, 0);
  msb->req = ((void*)0);
 }
 spin_unlock_irqrestore(&msb->q_lock, flags);
}
