
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int device_lock; } ;
struct mei_cl {struct mei_device* dev; } ;
struct inode {int dummy; } ;
struct file {struct mei_cl* private_data; } ;


 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 int cl_dbg (struct mei_device*,struct mei_cl*,char*) ;
 int kfree (struct mei_cl*) ;
 int mei_cl_disconnect (struct mei_cl*) ;
 int mei_cl_flush_queues (struct mei_cl*,struct file*) ;
 int mei_cl_unlink (struct mei_cl*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mei_release(struct inode *inode, struct file *file)
{
 struct mei_cl *cl = file->private_data;
 struct mei_device *dev;
 int rets;

 if (WARN_ON(!cl || !cl->dev))
  return -ENODEV;

 dev = cl->dev;

 mutex_lock(&dev->device_lock);

 rets = mei_cl_disconnect(cl);

 mei_cl_flush_queues(cl, file);
 cl_dbg(dev, cl, "removing\n");

 mei_cl_unlink(cl);

 file->private_data = ((void*)0);

 kfree(cl);

 mutex_unlock(&dev->device_lock);
 return rets;
}
