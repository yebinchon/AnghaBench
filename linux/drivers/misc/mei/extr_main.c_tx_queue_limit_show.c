
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mei_device {int tx_queue_limit; int device_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct mei_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t tx_queue_limit_show(struct device *device,
       struct device_attribute *attr, char *buf)
{
 struct mei_device *dev = dev_get_drvdata(device);
 u8 size = 0;

 mutex_lock(&dev->device_lock);
 size = dev->tx_queue_limit;
 mutex_unlock(&dev->device_lock);

 return snprintf(buf, PAGE_SIZE, "%u\n", size);
}
