
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;


 int ibmveth_driver_name ;
 int ibmveth_driver_version ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void netdev_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, ibmveth_driver_name, sizeof(info->driver));
 strlcpy(info->version, ibmveth_driver_version, sizeof(info->version));
}
