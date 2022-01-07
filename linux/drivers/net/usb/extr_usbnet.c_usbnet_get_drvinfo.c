
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int udev; TYPE_1__* driver_info; int driver_name; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct TYPE_2__ {int description; } ;


 int DRIVER_VERSION ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;

void usbnet_get_drvinfo (struct net_device *net, struct ethtool_drvinfo *info)
{
 struct usbnet *dev = netdev_priv(net);

 strlcpy (info->driver, dev->driver_name, sizeof info->driver);
 strlcpy (info->version, DRIVER_VERSION, sizeof info->version);
 strlcpy (info->fw_version, dev->driver_info->description,
  sizeof info->fw_version);
 usb_make_path (dev->udev, info->bus_info, sizeof info->bus_info);
}
