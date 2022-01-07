
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int driver; } ;
struct dpaa2_eth_priv {int dpni_ver_major; int dpni_ver_minor; } ;
struct TYPE_3__ {int parent; } ;


 int KBUILD_MODNAME ;
 int dev_name (int ) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,int,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void dpaa2_eth_get_drvinfo(struct net_device *net_dev,
      struct ethtool_drvinfo *drvinfo)
{
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);

 strlcpy(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));

 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
   "%u.%u", priv->dpni_ver_major, priv->dpni_ver_minor);

 strlcpy(drvinfo->bus_info, dev_name(net_dev->dev.parent->parent),
  sizeof(drvinfo->bus_info));
}
