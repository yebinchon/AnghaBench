
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lan78xx_net {int udev; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;


 int DRIVER_NAME ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int strncpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;

__attribute__((used)) static void lan78xx_get_drvinfo(struct net_device *net,
    struct ethtool_drvinfo *info)
{
 struct lan78xx_net *dev = netdev_priv(net);

 strncpy(info->driver, DRIVER_NAME, sizeof(info->driver));
 usb_make_path(dev->udev, info->bus_info, sizeof(info->bus_info));
}
