
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubiblock {scalar_t__ refcnt; int dev_mutex; int list; } ;
struct ubi_volume_info {int vol_id; int ubi_num; } ;


 int EBUSY ;
 int ENODEV ;
 int devices_mutex ;
 struct ubiblock* find_dev_nolock (int ,int ) ;
 int kfree (struct ubiblock*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubiblock_cleanup (struct ubiblock*) ;

int ubiblock_remove(struct ubi_volume_info *vi)
{
 struct ubiblock *dev;
 int ret;

 mutex_lock(&devices_mutex);
 dev = find_dev_nolock(vi->ubi_num, vi->vol_id);
 if (!dev) {
  ret = -ENODEV;
  goto out_unlock;
 }


 mutex_lock(&dev->dev_mutex);
 if (dev->refcnt > 0) {
  ret = -EBUSY;
  goto out_unlock_dev;
 }


 list_del(&dev->list);
 ubiblock_cleanup(dev);
 mutex_unlock(&dev->dev_mutex);
 mutex_unlock(&devices_mutex);

 kfree(dev);
 return 0;

out_unlock_dev:
 mutex_unlock(&dev->dev_mutex);
out_unlock:
 mutex_unlock(&devices_mutex);
 return ret;
}
