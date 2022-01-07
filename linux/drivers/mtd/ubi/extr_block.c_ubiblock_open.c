
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubiblock {scalar_t__ refcnt; int dev_mutex; int * desc; int vol_id; int ubi_num; int gd; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct ubiblock* private_data; } ;


 int EROFS ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int UBI_READONLY ;
 int dev_err (int ,char*,int ,int ) ;
 int disk_to_dev (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * ubi_open_volume (int ,int ,int ) ;

__attribute__((used)) static int ubiblock_open(struct block_device *bdev, fmode_t mode)
{
 struct ubiblock *dev = bdev->bd_disk->private_data;
 int ret;

 mutex_lock(&dev->dev_mutex);
 if (dev->refcnt > 0) {




  goto out_done;
 }






 if (mode & FMODE_WRITE) {
  ret = -EROFS;
  goto out_unlock;
 }

 dev->desc = ubi_open_volume(dev->ubi_num, dev->vol_id, UBI_READONLY);
 if (IS_ERR(dev->desc)) {
  dev_err(disk_to_dev(dev->gd), "failed to open ubi volume %d_%d",
   dev->ubi_num, dev->vol_id);
  ret = PTR_ERR(dev->desc);
  dev->desc = ((void*)0);
  goto out_unlock;
 }

out_done:
 dev->refcnt++;
 mutex_unlock(&dev->dev_mutex);
 return 0;

out_unlock:
 mutex_unlock(&dev->dev_mutex);
 return ret;
}
