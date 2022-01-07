
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {int io_queue_stopped; int need_flush_cache; int io_work; int io_queue; int queue; int q_lock; scalar_t__ card_dead; } ;
struct memstick_dev {int dummy; } ;


 int blk_mq_start_hw_queues (int ) ;
 int dbg (char*) ;
 struct msb_data* memstick_get_drvdata (struct memstick_dev*) ;
 int msb_invalidate_reg_window (struct msb_data*) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void msb_start(struct memstick_dev *card)
{
 struct msb_data *msb = memstick_get_drvdata(card);
 unsigned long flags;

 dbg("Resuming IO from msblock");

 msb_invalidate_reg_window(msb);

 spin_lock_irqsave(&msb->q_lock, flags);
 if (!msb->io_queue_stopped || msb->card_dead) {
  spin_unlock_irqrestore(&msb->q_lock, flags);
  return;
 }
 spin_unlock_irqrestore(&msb->q_lock, flags);


 msb->need_flush_cache = 1;
 msb->io_queue_stopped = 0;

 blk_mq_start_hw_queues(msb->queue);

 queue_work(msb->io_queue, &msb->io_work);

}
