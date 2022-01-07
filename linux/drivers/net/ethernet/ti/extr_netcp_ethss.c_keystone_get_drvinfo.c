
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;


 int NETCP_DRIVER_NAME ;
 int NETCP_DRIVER_VERSION ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static void keystone_get_drvinfo(struct net_device *ndev,
     struct ethtool_drvinfo *info)
{
 strncpy(info->driver, NETCP_DRIVER_NAME, sizeof(info->driver));
 strncpy(info->version, NETCP_DRIVER_VERSION, sizeof(info->version));
}
