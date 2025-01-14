
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cosm_device {void* log_buf_addr; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct cosm_device* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t
log_buf_addr_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct cosm_device *cdev = dev_get_drvdata(dev);
 int ret;
 unsigned long addr;

 if (!cdev)
  return -EINVAL;

 ret = kstrtoul(buf, 16, &addr);
 if (ret)
  goto exit;

 cdev->log_buf_addr = (void *)addr;
 ret = count;
exit:
 return ret;
}
