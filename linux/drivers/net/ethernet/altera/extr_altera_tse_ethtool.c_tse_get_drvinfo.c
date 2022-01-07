
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct altera_tse_private {TYPE_1__* mac_dev; } ;
struct TYPE_2__ {int megacore_revision; } ;


 int ETHTOOL_FWVERS_LEN ;
 int ioread32 (int *) ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 int snprintf (int ,int ,char*,int,int) ;
 int sprintf (int ,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void tse_get_drvinfo(struct net_device *dev,
       struct ethtool_drvinfo *info)
{
 struct altera_tse_private *priv = netdev_priv(dev);
 u32 rev = ioread32(&priv->mac_dev->megacore_revision);

 strcpy(info->driver, "altera_tse");
 strcpy(info->version, "v8.0");
 snprintf(info->fw_version, ETHTOOL_FWVERS_LEN, "v%d.%d",
   rev & 0xFFFF, (rev & 0xFFFF0000) >> 16);
 sprintf(info->bus_info, "platform");
}
