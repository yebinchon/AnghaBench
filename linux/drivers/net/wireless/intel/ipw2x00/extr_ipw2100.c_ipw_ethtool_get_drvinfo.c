
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucode_ver ;
struct net_device {int dummy; } ;
struct ipw2100_priv {int eeprom_version; int pci_dev; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
typedef int fw_ver ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int ipw2100_get_fwversion (struct ipw2100_priv*,char*,int) ;
 int ipw2100_get_ucodeversion (struct ipw2100_priv*,char*,int) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int pci_name (int ) ;
 int snprintf (int ,int,char*,char*,int,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ipw_ethtool_get_drvinfo(struct net_device *dev,
        struct ethtool_drvinfo *info)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 char fw_ver[64], ucode_ver[64];

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));

 ipw2100_get_fwversion(priv, fw_ver, sizeof(fw_ver));
 ipw2100_get_ucodeversion(priv, ucode_ver, sizeof(ucode_ver));

 snprintf(info->fw_version, sizeof(info->fw_version), "%s:%d:%s",
   fw_ver, priv->eeprom_version, ucode_ver);

 strlcpy(info->bus_info, pci_name(priv->pci_dev),
  sizeof(info->bus_info));
}
