
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_fw {int version; } ;
struct rtl8169_private {int pci_dev; struct rtl_fw* rtl_fw; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int fw_version; int bus_info; int driver; } ;


 int BUILD_BUG_ON (int) ;
 int MODULENAME ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void rtl8169_get_drvinfo(struct net_device *dev,
    struct ethtool_drvinfo *info)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 struct rtl_fw *rtl_fw = tp->rtl_fw;

 strlcpy(info->driver, MODULENAME, sizeof(info->driver));
 strlcpy(info->bus_info, pci_name(tp->pci_dev), sizeof(info->bus_info));
 BUILD_BUG_ON(sizeof(info->fw_version) < sizeof(rtl_fw->version));
 if (rtl_fw)
  strlcpy(info->fw_version, rtl_fw->version,
   sizeof(info->fw_version));
}
