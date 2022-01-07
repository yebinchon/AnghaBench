
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {char* name; } ;
struct net_device {int dummy; } ;
struct fjes_adapter {struct platform_device* plat_dev; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* fjes_driver_name ;
 char* fjes_driver_version ;
 struct fjes_adapter* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void fjes_get_drvinfo(struct net_device *netdev,
        struct ethtool_drvinfo *drvinfo)
{
 struct fjes_adapter *adapter = netdev_priv(netdev);
 struct platform_device *plat_dev;

 plat_dev = adapter->plat_dev;

 strlcpy(drvinfo->driver, fjes_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, fjes_driver_version,
  sizeof(drvinfo->version));

 strlcpy(drvinfo->fw_version, "none", sizeof(drvinfo->fw_version));
 snprintf(drvinfo->bus_info, sizeof(drvinfo->bus_info),
   "platform:%s", plat_dev->name);
}
