
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct TYPE_3__ {int parent; } ;


 int KBUILD_MODNAME ;
 int dev_name (int ) ;
 int netdev_notice (struct net_device*,char*,int) ;
 int snprintf (int ,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void dpaa_get_drvinfo(struct net_device *net_dev,
        struct ethtool_drvinfo *drvinfo)
{
 int len;

 strlcpy(drvinfo->driver, KBUILD_MODNAME,
  sizeof(drvinfo->driver));
 len = snprintf(drvinfo->version, sizeof(drvinfo->version),
         "%X", 0);
 len = snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
         "%X", 0);

 if (len >= sizeof(drvinfo->fw_version)) {

  netdev_notice(net_dev, "snprintf() = %d\n", len);
 }
 strlcpy(drvinfo->bus_info, dev_name(net_dev->dev.parent->parent),
  sizeof(drvinfo->bus_info));
}
