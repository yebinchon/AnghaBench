
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ice_vsi {struct ice_pf* back; } ;
struct ice_pf {int pdev; int hw; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct ethtool_drvinfo {int n_priv_flags; int bus_info; int fw_version; int version; int driver; } ;


 int ICE_PRIV_FLAG_ARRAY_SIZE ;
 int KBUILD_MODNAME ;
 int ice_drv_ver ;
 int ice_nvm_version_str (int *) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;
 struct ice_pf *pf = vsi->back;

 strlcpy(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, ice_drv_ver, sizeof(drvinfo->version));
 strlcpy(drvinfo->fw_version, ice_nvm_version_str(&pf->hw),
  sizeof(drvinfo->fw_version));
 strlcpy(drvinfo->bus_info, pci_name(pf->pdev),
  sizeof(drvinfo->bus_info));
 drvinfo->n_priv_flags = ICE_PRIV_FLAG_ARRAY_SIZE;
}
