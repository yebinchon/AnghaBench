
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mtd_blktrans_dev {int lock; int * mtd; TYPE_1__* tr; scalar_t__ open; TYPE_3__* rq; int queue_lock; int disk; scalar_t__ disk_attributes; } ;
struct TYPE_9__ {int * queuedata; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_7__ {int (* release ) (struct mtd_blktrans_dev*) ;} ;


 int BUG () ;
 int __put_mtd_device (int *) ;
 int blk_mq_freeze_queue (TYPE_3__*) ;
 int blk_mq_quiesce_queue (TYPE_3__*) ;
 int blk_mq_unfreeze_queue (TYPE_3__*) ;
 int blk_mq_unquiesce_queue (TYPE_3__*) ;
 int blktrans_dev_put (struct mtd_blktrans_dev*) ;
 int del_gendisk (int ) ;
 TYPE_2__* disk_to_dev (int ) ;
 int mtd_table_mutex ;
 int mutex_lock (int *) ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mtd_blktrans_dev*) ;
 int sysfs_remove_group (int *,scalar_t__) ;

int del_mtd_blktrans_dev(struct mtd_blktrans_dev *old)
{
 unsigned long flags;

 if (mutex_trylock(&mtd_table_mutex)) {
  mutex_unlock(&mtd_table_mutex);
  BUG();
 }

 if (old->disk_attributes)
  sysfs_remove_group(&disk_to_dev(old->disk)->kobj,
      old->disk_attributes);


 del_gendisk(old->disk);


 spin_lock_irqsave(&old->queue_lock, flags);
 old->rq->queuedata = ((void*)0);
 spin_unlock_irqrestore(&old->queue_lock, flags);


 blk_mq_freeze_queue(old->rq);
 blk_mq_quiesce_queue(old->rq);
 blk_mq_unquiesce_queue(old->rq);
 blk_mq_unfreeze_queue(old->rq);



 mutex_lock(&old->lock);
 if (old->open) {
  if (old->tr->release)
   old->tr->release(old);
  __put_mtd_device(old->mtd);
 }

 old->mtd = ((void*)0);

 mutex_unlock(&old->lock);
 blktrans_dev_put(old);
 return 0;
}
