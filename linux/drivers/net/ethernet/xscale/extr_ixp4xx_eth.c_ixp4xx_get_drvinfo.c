
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int* firmware; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int driver; } ;


 char* DRV_NAME ;
 struct port* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,int,int,int,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void ixp4xx_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 struct port *port = netdev_priv(dev);

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 snprintf(info->fw_version, sizeof(info->fw_version), "%u:%u:%u:%u",
   port->firmware[0], port->firmware[1],
   port->firmware[2], port->firmware[3]);
 strlcpy(info->bus_info, "internal", sizeof(info->bus_info));
}
