
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_ftl {int mutex; int flush_work; int timer; } ;
struct mtd_blktrans_dev {struct sm_ftl* priv; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sm_cache_flush (struct sm_ftl*) ;

__attribute__((used)) static void sm_release(struct mtd_blktrans_dev *dev)
{
 struct sm_ftl *ftl = dev->priv;

 mutex_lock(&ftl->mutex);
 del_timer_sync(&ftl->timer);
 cancel_work_sync(&ftl->flush_work);
 sm_cache_flush(ftl);
 mutex_unlock(&ftl->mutex);
}
