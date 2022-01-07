
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct TYPE_2__ {scalar_t__ pf_id; } ;
struct i40e_pf {TYPE_1__ hw; int pdev; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct ethtool_drvinfo {int n_priv_flags; int bus_info; int fw_version; int version; int driver; } ;


 scalar_t__ I40E_GL_PRIV_FLAGS_STR_LEN ;
 int I40E_PRIV_FLAGS_STR_LEN ;
 int i40e_driver_name ;
 int i40e_driver_version_str ;
 int i40e_nvm_version_str (TYPE_1__*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void i40e_get_drvinfo(struct net_device *netdev,
        struct ethtool_drvinfo *drvinfo)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;

 strlcpy(drvinfo->driver, i40e_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, i40e_driver_version_str,
  sizeof(drvinfo->version));
 strlcpy(drvinfo->fw_version, i40e_nvm_version_str(&pf->hw),
  sizeof(drvinfo->fw_version));
 strlcpy(drvinfo->bus_info, pci_name(pf->pdev),
  sizeof(drvinfo->bus_info));
 drvinfo->n_priv_flags = I40E_PRIV_FLAGS_STR_LEN;
 if (pf->hw.pf_id == 0)
  drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;
}
