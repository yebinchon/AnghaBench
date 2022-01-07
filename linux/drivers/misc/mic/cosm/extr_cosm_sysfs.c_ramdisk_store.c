
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cosm_device {char* ramdisk; int cosm_mutex; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENOMEM ;
 int GFP_KERNEL ;
 struct cosm_device* dev_get_drvdata (struct device*) ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static ssize_t
ramdisk_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct cosm_device *cdev = dev_get_drvdata(dev);

 if (!cdev)
  return -EINVAL;

 mutex_lock(&cdev->cosm_mutex);
 kfree(cdev->ramdisk);

 cdev->ramdisk = kmalloc(count + 1, GFP_KERNEL);
 if (!cdev->ramdisk) {
  count = -ENOMEM;
  goto unlock;
 }

 strncpy(cdev->ramdisk, buf, count);

 if (cdev->ramdisk[count - 1] == '\n')
  cdev->ramdisk[count - 1] = '\0';
 else
  cdev->ramdisk[count] = '\0';
unlock:
 mutex_unlock(&cdev->cosm_mutex);
 return count;
}
