
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_fw_status {int count; int * status; } ;
struct mei_device {int device_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int dev_err (struct device*,char*,int) ;
 struct mei_device* dev_get_drvdata (struct device*) ;
 int mei_fw_status (struct mei_device*,struct mei_fw_status*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int,char*,int ) ;

__attribute__((used)) static ssize_t fw_status_show(struct device *device,
  struct device_attribute *attr, char *buf)
{
 struct mei_device *dev = dev_get_drvdata(device);
 struct mei_fw_status fw_status;
 int err, i;
 ssize_t cnt = 0;

 mutex_lock(&dev->device_lock);
 err = mei_fw_status(dev, &fw_status);
 mutex_unlock(&dev->device_lock);
 if (err) {
  dev_err(device, "read fw_status error = %d\n", err);
  return err;
 }

 for (i = 0; i < fw_status.count; i++)
  cnt += scnprintf(buf + cnt, PAGE_SIZE - cnt, "%08X\n",
    fw_status.status[i]);
 return cnt;
}
