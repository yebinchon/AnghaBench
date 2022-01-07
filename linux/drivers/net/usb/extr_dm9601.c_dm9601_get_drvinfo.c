
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int dummy; } ;


 int usbnet_get_drvinfo (struct net_device*,struct ethtool_drvinfo*) ;

__attribute__((used)) static void dm9601_get_drvinfo(struct net_device *net,
          struct ethtool_drvinfo *info)
{

 usbnet_get_drvinfo(net, info);
}
