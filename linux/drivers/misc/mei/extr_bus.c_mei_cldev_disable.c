
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int device_lock; int dev; } ;
struct mei_cl_device {struct mei_device* bus; struct mei_cl* cl; } ;
struct mei_cl {int dummy; } ;


 int ENODEV ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int mei_cl_disconnect (struct mei_cl*) ;
 int mei_cl_flush_queues (struct mei_cl*,int *) ;
 int mei_cl_is_connected (struct mei_cl*) ;
 int mei_cl_unlink (struct mei_cl*) ;
 int mei_cldev_unregister_callbacks (struct mei_cl_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mei_cldev_disable(struct mei_cl_device *cldev)
{
 struct mei_device *bus;
 struct mei_cl *cl;
 int err;

 if (!cldev)
  return -ENODEV;

 cl = cldev->cl;

 bus = cldev->bus;

 mei_cldev_unregister_callbacks(cldev);

 mutex_lock(&bus->device_lock);

 if (!mei_cl_is_connected(cl)) {
  dev_dbg(bus->dev, "Already disconnected\n");
  err = 0;
  goto out;
 }

 err = mei_cl_disconnect(cl);
 if (err < 0)
  dev_err(bus->dev, "Could not disconnect from the ME client\n");

out:

 mei_cl_flush_queues(cl, ((void*)0));
 mei_cl_unlink(cl);

 mutex_unlock(&bus->device_lock);
 return err;
}
