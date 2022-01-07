
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {int card_dead; int disk; int * queue; int tag_set; int q_lock; int io_queue_stopped; } ;
struct memstick_dev {int dummy; } ;


 int blk_cleanup_queue (int *) ;
 int blk_mq_free_tag_set (int *) ;
 int blk_mq_start_hw_queues (int *) ;
 int dbg (char*) ;
 int del_gendisk (int ) ;
 struct msb_data* memstick_get_drvdata (struct memstick_dev*) ;
 int memstick_set_drvdata (struct memstick_dev*,int *) ;
 int msb_data_clear (struct msb_data*) ;
 int msb_disk_lock ;
 int msb_disk_release (int ) ;
 int msb_stop (struct memstick_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void msb_remove(struct memstick_dev *card)
{
 struct msb_data *msb = memstick_get_drvdata(card);
 unsigned long flags;

 if (!msb->io_queue_stopped)
  msb_stop(card);

 dbg("Removing the disk device");


 spin_lock_irqsave(&msb->q_lock, flags);
 msb->card_dead = 1;
 spin_unlock_irqrestore(&msb->q_lock, flags);
 blk_mq_start_hw_queues(msb->queue);


 del_gendisk(msb->disk);
 blk_cleanup_queue(msb->queue);
 blk_mq_free_tag_set(&msb->tag_set);
 msb->queue = ((void*)0);

 mutex_lock(&msb_disk_lock);
 msb_data_clear(msb);
 mutex_unlock(&msb_disk_lock);

 msb_disk_release(msb->disk);
 memstick_set_drvdata(card, ((void*)0));
}
