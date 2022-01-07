
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct mei_device {unsigned int tx_queue_limit; int device_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 unsigned int MEI_TX_QUEUE_LIMIT_MAX ;
 unsigned int MEI_TX_QUEUE_LIMIT_MIN ;
 struct mei_device* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t tx_queue_limit_store(struct device *device,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct mei_device *dev = dev_get_drvdata(device);
 u8 limit;
 unsigned int inp;
 int err;

 err = kstrtouint(buf, 10, &inp);
 if (err)
  return err;
 if (inp > MEI_TX_QUEUE_LIMIT_MAX || inp < MEI_TX_QUEUE_LIMIT_MIN)
  return -EINVAL;
 limit = inp;

 mutex_lock(&dev->device_lock);
 dev->tx_queue_limit = limit;
 mutex_unlock(&dev->device_lock);

 return count;
}
