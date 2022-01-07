
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int udev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int DRIVER_VERSION ;
 int MODULENAME ;
 struct r8152* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;

__attribute__((used)) static void rtl8152_get_drvinfo(struct net_device *netdev,
    struct ethtool_drvinfo *info)
{
 struct r8152 *tp = netdev_priv(netdev);

 strlcpy(info->driver, MODULENAME, sizeof(info->driver));
 strlcpy(info->version, DRIVER_VERSION, sizeof(info->version));
 usb_make_path(tp->udev, info->bus_info, sizeof(info->bus_info));
}
