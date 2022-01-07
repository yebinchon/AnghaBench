
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_hw_features {int version; } ;
struct xgbe_prv_data {int dev; struct xgbe_hw_features hw_feat; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int fw_version; int bus_info; int version; int driver; } ;


 int DEVID ;
 int MAC_VR ;
 int SNPSVER ;
 int USERVER ;
 int XGBE_DRV_NAME ;
 int XGBE_DRV_VERSION ;
 int XGMAC_GET_BITS (int ,int ,int ) ;
 int dev_name (int ) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void xgbe_get_drvinfo(struct net_device *netdev,
        struct ethtool_drvinfo *drvinfo)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 struct xgbe_hw_features *hw_feat = &pdata->hw_feat;

 strlcpy(drvinfo->driver, XGBE_DRV_NAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, XGBE_DRV_VERSION, sizeof(drvinfo->version));
 strlcpy(drvinfo->bus_info, dev_name(pdata->dev),
  sizeof(drvinfo->bus_info));
 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version), "%d.%d.%d",
   XGMAC_GET_BITS(hw_feat->version, MAC_VR, USERVER),
   XGMAC_GET_BITS(hw_feat->version, MAC_VR, DEVID),
   XGMAC_GET_BITS(hw_feat->version, MAC_VR, SNPSVER));
}
