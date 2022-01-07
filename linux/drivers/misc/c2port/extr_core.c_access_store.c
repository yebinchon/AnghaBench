
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct c2port_ops {int (* c2d_dir ) (struct c2port_device*,int) ;int (* access ) (struct c2port_device*,int) ;int (* c2ck_set ) (struct c2port_device*,int) ;} ;
struct c2port_device {int access; int mutex; struct c2port_ops* ops; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct c2port_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,int*) ;
 int stub1 (struct c2port_device*,int) ;
 int stub2 (struct c2port_device*,int) ;
 int stub3 (struct c2port_device*,int) ;

__attribute__((used)) static ssize_t access_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct c2port_device *c2dev = dev_get_drvdata(dev);
 struct c2port_ops *ops = c2dev->ops;
 int status, ret;

 ret = sscanf(buf, "%d", &status);
 if (ret != 1)
  return -EINVAL;

 mutex_lock(&c2dev->mutex);

 c2dev->access = !!status;



 if (c2dev->access)
  ops->c2ck_set(c2dev, 1);
 ops->access(c2dev, c2dev->access);
 if (c2dev->access)
  ops->c2d_dir(c2dev, 1);

 mutex_unlock(&c2dev->mutex);

 return count;
}
