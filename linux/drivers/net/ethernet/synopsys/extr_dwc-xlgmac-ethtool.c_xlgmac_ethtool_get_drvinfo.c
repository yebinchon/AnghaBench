
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int version; } ;
struct xlgmac_pdata {int dev; int drv_ver; int drv_name; TYPE_1__ hw_feat; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int fw_version; int bus_info; int version; int driver; } ;


 int MAC_VR_DEVID_LEN ;
 int MAC_VR_DEVID_POS ;
 int MAC_VR_SNPSVER_LEN ;
 int MAC_VR_SNPSVER_POS ;
 int MAC_VR_USERVER_LEN ;
 int MAC_VR_USERVER_POS ;
 int XLGMAC_GET_REG_BITS (int,int ,int ) ;
 int dev_name (int ) ;
 struct xlgmac_pdata* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void xlgmac_ethtool_get_drvinfo(struct net_device *netdev,
           struct ethtool_drvinfo *drvinfo)
{
 struct xlgmac_pdata *pdata = netdev_priv(netdev);
 u32 ver = pdata->hw_feat.version;
 u32 snpsver, devid, userver;

 strlcpy(drvinfo->driver, pdata->drv_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, pdata->drv_ver, sizeof(drvinfo->version));
 strlcpy(drvinfo->bus_info, dev_name(pdata->dev),
  sizeof(drvinfo->bus_info));




 snpsver = XLGMAC_GET_REG_BITS(ver, MAC_VR_SNPSVER_POS,
          MAC_VR_SNPSVER_LEN);
 devid = XLGMAC_GET_REG_BITS(ver, MAC_VR_DEVID_POS,
        MAC_VR_DEVID_LEN);
 userver = XLGMAC_GET_REG_BITS(ver, MAC_VR_USERVER_POS,
          MAC_VR_USERVER_LEN);
 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
   "S.D.U: %x.%x.%x", snpsver, devid, userver);
}
