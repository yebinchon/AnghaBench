
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct catc {int usbdev; } ;


 int DRIVER_VERSION ;
 int driver_name ;
 struct catc* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;

__attribute__((used)) static void catc_get_drvinfo(struct net_device *dev,
        struct ethtool_drvinfo *info)
{
 struct catc *catc = netdev_priv(dev);
 strlcpy(info->driver, driver_name, sizeof(info->driver));
 strlcpy(info->version, DRIVER_VERSION, sizeof(info->version));
 usb_make_path(catc->usbdev, info->bus_info, sizeof(info->bus_info));
}
