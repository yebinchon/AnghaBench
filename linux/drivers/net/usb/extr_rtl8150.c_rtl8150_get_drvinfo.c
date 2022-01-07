
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct TYPE_3__ {int udev; } ;
typedef TYPE_1__ rtl8150_t ;


 int DRIVER_VERSION ;
 int driver_name ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;

__attribute__((used)) static void rtl8150_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *info)
{
 rtl8150_t *dev = netdev_priv(netdev);

 strlcpy(info->driver, driver_name, sizeof(info->driver));
 strlcpy(info->version, DRIVER_VERSION, sizeof(info->version));
 usb_make_path(dev->udev, info->bus_info, sizeof(info->bus_info));
}
