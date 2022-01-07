
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {TYPE_2__* dev; } ;
struct ethtool_drvinfo {char* version; char* driver; char* bus_info; char* fw_version; scalar_t__ eedump_len; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {char* name; } ;


 int ETHTOOL_BUSINFO_LEN ;
 int ETHTOOL_FWVERS_LEN ;
 char* HNAE_DRIVER_NAME ;
 char* HNAE_DRIVER_VERSION ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void hns_nic_get_drvinfo(struct net_device *net_dev,
    struct ethtool_drvinfo *drvinfo)
{
 struct hns_nic_priv *priv = netdev_priv(net_dev);

 strncpy(drvinfo->version, HNAE_DRIVER_VERSION,
  sizeof(drvinfo->version));
 drvinfo->version[sizeof(drvinfo->version) - 1] = '\0';

 strncpy(drvinfo->driver, HNAE_DRIVER_NAME, sizeof(drvinfo->driver));
 drvinfo->driver[sizeof(drvinfo->driver) - 1] = '\0';

 strncpy(drvinfo->bus_info, priv->dev->bus->name,
  sizeof(drvinfo->bus_info));
 drvinfo->bus_info[ETHTOOL_BUSINFO_LEN - 1] = '\0';

 strncpy(drvinfo->fw_version, "N/A", ETHTOOL_FWVERS_LEN);
 drvinfo->eedump_len = 0;
}
