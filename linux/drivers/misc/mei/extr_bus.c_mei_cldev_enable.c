
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int device_lock; } ;
struct mei_cl_device {int dev; int me_cl; struct mei_cl* cl; struct mei_device* bus; } ;
struct mei_cl {scalar_t__ state; struct mei_cl_device* cldev; } ;


 int ENOTTY ;
 scalar_t__ MEI_FILE_UNINITIALIZED ;
 int dev_err (int *,char*) ;
 int mei_cl_connect (struct mei_cl*,int ,int *) ;
 scalar_t__ mei_cl_is_connected (struct mei_cl*) ;
 int mei_cl_link (struct mei_cl*) ;
 int mei_me_cl_is_active (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mei_cldev_enable(struct mei_cl_device *cldev)
{
 struct mei_device *bus = cldev->bus;
 struct mei_cl *cl;
 int ret;

 cl = cldev->cl;

 mutex_lock(&bus->device_lock);
 if (cl->state == MEI_FILE_UNINITIALIZED) {
  ret = mei_cl_link(cl);
  if (ret)
   goto out;

  cl->cldev = cldev;
 }

 if (mei_cl_is_connected(cl)) {
  ret = 0;
  goto out;
 }

 if (!mei_me_cl_is_active(cldev->me_cl)) {
  dev_err(&cldev->dev, "me client is not active\n");
  ret = -ENOTTY;
  goto out;
 }

 ret = mei_cl_connect(cl, cldev->me_cl, ((void*)0));
 if (ret < 0)
  dev_err(&cldev->dev, "cannot connect\n");

out:
 mutex_unlock(&bus->device_lock);

 return ret;
}
