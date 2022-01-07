
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct net_device {TYPE_1__ dev; } ;


 int dev_alert (TYPE_1__*,char*) ;
 int netdev_alert (struct net_device*,char*) ;
 int netdev_sysfs_group ;
 int register_candev (struct net_device*) ;
 scalar_t__ sysfs_create_group (int *,int *) ;

__attribute__((used)) static int softing_netdev_register(struct net_device *netdev)
{
 int ret;

 ret = register_candev(netdev);
 if (ret) {
  dev_alert(&netdev->dev, "register failed\n");
  return ret;
 }
 if (sysfs_create_group(&netdev->dev.kobj, &netdev_sysfs_group) < 0)
  netdev_alert(netdev, "sysfs group failed\n");

 return 0;
}
