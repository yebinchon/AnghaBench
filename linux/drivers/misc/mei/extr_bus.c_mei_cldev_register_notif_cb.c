
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int device_lock; } ;
struct mei_cl_device {int cl; int notif_work; scalar_t__ notif_cb; struct mei_device* bus; } ;
typedef scalar_t__ mei_cldev_cb_t ;


 int EALREADY ;
 int EINVAL ;
 int INIT_WORK (int *,int ) ;
 int mei_cl_bus_notif_work ;
 int mei_cl_notify_request (int ,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mei_cldev_register_notif_cb(struct mei_cl_device *cldev,
    mei_cldev_cb_t notif_cb)
{
 struct mei_device *bus = cldev->bus;
 int ret;

 if (!notif_cb)
  return -EINVAL;

 if (cldev->notif_cb)
  return -EALREADY;

 cldev->notif_cb = notif_cb;
 INIT_WORK(&cldev->notif_work, mei_cl_bus_notif_work);

 mutex_lock(&bus->device_lock);
 ret = mei_cl_notify_request(cldev->cl, ((void*)0), 1);
 mutex_unlock(&bus->device_lock);
 if (ret)
  return ret;

 return 0;
}
