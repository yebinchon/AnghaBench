
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_ftl {int mutex; } ;
struct mtd_blktrans_dev {struct sm_ftl* priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sm_cache_flush (struct sm_ftl*) ;

__attribute__((used)) static int sm_flush(struct mtd_blktrans_dev *dev)
{
 struct sm_ftl *ftl = dev->priv;
 int retval;

 mutex_lock(&ftl->mutex);
 retval = sm_cache_flush(ftl);
 mutex_unlock(&ftl->mutex);
 return retval;
}
