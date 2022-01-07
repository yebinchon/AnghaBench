
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubiblock {scalar_t__ refcnt; int dev_mutex; int * desc; } ;
struct gendisk {struct ubiblock* private_data; } ;
typedef int fmode_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubi_close_volume (int *) ;

__attribute__((used)) static void ubiblock_release(struct gendisk *gd, fmode_t mode)
{
 struct ubiblock *dev = gd->private_data;

 mutex_lock(&dev->dev_mutex);
 dev->refcnt--;
 if (dev->refcnt == 0) {
  ubi_close_volume(dev->desc);
  dev->desc = ((void*)0);
 }
 mutex_unlock(&dev->dev_mutex);
}
