
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int ref; } ;
struct gendisk {struct mtd_blktrans_dev* private_data; } ;


 int blktrans_ref_mutex ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct mtd_blktrans_dev *blktrans_dev_get(struct gendisk *disk)
{
 struct mtd_blktrans_dev *dev;

 mutex_lock(&blktrans_ref_mutex);
 dev = disk->private_data;

 if (!dev)
  goto unlock;
 kref_get(&dev->ref);
unlock:
 mutex_unlock(&blktrans_ref_mutex);
 return dev;
}
