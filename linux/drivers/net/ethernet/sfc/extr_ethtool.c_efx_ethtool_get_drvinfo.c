
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct efx_nic {int pci_dev; } ;


 int EFX_DRIVER_VERSION ;
 int KBUILD_MODNAME ;
 int efx_mcdi_print_fwver (struct efx_nic*,int ,int) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void efx_ethtool_get_drvinfo(struct net_device *net_dev,
        struct ethtool_drvinfo *info)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
 strlcpy(info->version, EFX_DRIVER_VERSION, sizeof(info->version));
 efx_mcdi_print_fwver(efx, info->fw_version,
        sizeof(info->fw_version));
 strlcpy(info->bus_info, pci_name(efx->pci_dev), sizeof(info->bus_info));
}
