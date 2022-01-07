
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ubiblock {int dev_mutex; int gd; } ;
struct ubi_volume_info {int used_bytes; int size; int vol_id; int ubi_num; } ;


 int EFBIG ;
 int ENODEV ;
 int calc_disk_capacity (struct ubi_volume_info*,scalar_t__*) ;
 int dev_info (int ,char*,int ) ;
 int dev_warn (int ,char*,int ) ;
 int devices_mutex ;
 int disk_to_dev (int ) ;
 struct ubiblock* find_dev_nolock (int ,int ) ;
 scalar_t__ get_capacity (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_capacity (int ,scalar_t__) ;

__attribute__((used)) static int ubiblock_resize(struct ubi_volume_info *vi)
{
 struct ubiblock *dev;
 u64 disk_capacity;
 int ret;






 mutex_lock(&devices_mutex);
 dev = find_dev_nolock(vi->ubi_num, vi->vol_id);
 if (!dev) {
  mutex_unlock(&devices_mutex);
  return -ENODEV;
 }

 ret = calc_disk_capacity(vi, &disk_capacity);
 if (ret) {
  mutex_unlock(&devices_mutex);
  if (ret == -EFBIG) {
   dev_warn(disk_to_dev(dev->gd),
     "the volume is too big (%d LEBs), cannot resize",
     vi->size);
  }
  return ret;
 }

 mutex_lock(&dev->dev_mutex);

 if (get_capacity(dev->gd) != disk_capacity) {
  set_capacity(dev->gd, disk_capacity);
  dev_info(disk_to_dev(dev->gd), "resized to %lld bytes",
    vi->used_bytes);
 }
 mutex_unlock(&dev->dev_mutex);
 mutex_unlock(&devices_mutex);
 return 0;
}
