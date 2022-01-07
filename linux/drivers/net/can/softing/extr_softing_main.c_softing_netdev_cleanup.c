
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct net_device {TYPE_1__ dev; } ;


 int free_candev (struct net_device*) ;
 int netdev_sysfs_group ;
 int sysfs_remove_group (int *,int *) ;
 int unregister_candev (struct net_device*) ;

__attribute__((used)) static void softing_netdev_cleanup(struct net_device *netdev)
{
 sysfs_remove_group(&netdev->dev.kobj, &netdev_sysfs_group);
 unregister_candev(netdev);
 free_candev(netdev);
}
