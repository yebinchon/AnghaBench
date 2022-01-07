
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xenbus_device {int otherend; int nodename; int dev; } ;
struct netfront_info {TYPE_1__* netdev; scalar_t__ queues; } ;
struct TYPE_3__ {scalar_t__ reg_state; } ;


 scalar_t__ NETREG_REGISTERED ;
 scalar_t__ XenbusStateClosed ;
 scalar_t__ XenbusStateClosing ;
 scalar_t__ XenbusStateUnknown ;
 int dev_dbg (int *,char*,int ) ;
 struct netfront_info* dev_get_drvdata (int *) ;
 int module_wq ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdev (TYPE_1__*) ;
 int wait_event (int ,int) ;
 scalar_t__ xenbus_read_driver_state (int ) ;
 int xenbus_switch_state (struct xenbus_device*,scalar_t__) ;
 int xennet_destroy_queues (struct netfront_info*) ;
 int xennet_disconnect_backend (struct netfront_info*) ;
 int xennet_free_netdev (TYPE_1__*) ;

__attribute__((used)) static int xennet_remove(struct xenbus_device *dev)
{
 struct netfront_info *info = dev_get_drvdata(&dev->dev);

 dev_dbg(&dev->dev, "%s\n", dev->nodename);

 if (xenbus_read_driver_state(dev->otherend) != XenbusStateClosed) {
  xenbus_switch_state(dev, XenbusStateClosing);
  wait_event(module_wq,
      xenbus_read_driver_state(dev->otherend) ==
      XenbusStateClosing ||
      xenbus_read_driver_state(dev->otherend) ==
      XenbusStateUnknown);

  xenbus_switch_state(dev, XenbusStateClosed);
  wait_event(module_wq,
      xenbus_read_driver_state(dev->otherend) ==
      XenbusStateClosed ||
      xenbus_read_driver_state(dev->otherend) ==
      XenbusStateUnknown);
 }

 xennet_disconnect_backend(info);

 if (info->netdev->reg_state == NETREG_REGISTERED)
  unregister_netdev(info->netdev);

 if (info->queues) {
  rtnl_lock();
  xennet_destroy_queues(info);
  rtnl_unlock();
 }
 xennet_free_netdev(info->netdev);

 return 0;
}
