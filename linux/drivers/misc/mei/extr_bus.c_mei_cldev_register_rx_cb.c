
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int device_lock; } ;
struct mei_cl_device {int cl; int rx_work; scalar_t__ rx_cb; struct mei_device* bus; } ;
typedef scalar_t__ mei_cldev_cb_t ;


 int EALREADY ;
 int EBUSY ;
 int EINVAL ;
 int INIT_WORK (int *,int ) ;
 int mei_cl_bus_rx_work ;
 int mei_cl_mtu (int ) ;
 int mei_cl_read_start (int ,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mei_cldev_register_rx_cb(struct mei_cl_device *cldev, mei_cldev_cb_t rx_cb)
{
 struct mei_device *bus = cldev->bus;
 int ret;

 if (!rx_cb)
  return -EINVAL;
 if (cldev->rx_cb)
  return -EALREADY;

 cldev->rx_cb = rx_cb;
 INIT_WORK(&cldev->rx_work, mei_cl_bus_rx_work);

 mutex_lock(&bus->device_lock);
 ret = mei_cl_read_start(cldev->cl, mei_cl_mtu(cldev->cl), ((void*)0));
 mutex_unlock(&bus->device_lock);
 if (ret && ret != -EBUSY)
  return ret;

 return 0;
}
