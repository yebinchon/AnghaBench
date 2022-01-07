
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vers ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ipw_priv {int pci_dev; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
typedef int date ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int IPW_ORD_STAT_FW_DATE ;
 int IPW_ORD_STAT_FW_VERSION ;
 int ipw_get_ordinal (struct ipw_priv*,int ,char*,int*) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int pci_name (int ) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ipw_ethtool_get_drvinfo(struct net_device *dev,
        struct ethtool_drvinfo *info)
{
 struct ipw_priv *p = libipw_priv(dev);
 char vers[64];
 char date[32];
 u32 len;

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));

 len = sizeof(vers);
 ipw_get_ordinal(p, IPW_ORD_STAT_FW_VERSION, vers, &len);
 len = sizeof(date);
 ipw_get_ordinal(p, IPW_ORD_STAT_FW_DATE, date, &len);

 snprintf(info->fw_version, sizeof(info->fw_version), "%s (%s)",
   vers, date);
 strlcpy(info->bus_info, pci_name(p->pci_dev),
  sizeof(info->bus_info));
}
