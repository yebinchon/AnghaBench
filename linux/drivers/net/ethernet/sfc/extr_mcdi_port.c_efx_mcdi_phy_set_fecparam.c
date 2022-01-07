
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethtool_fecparam {int fec; } ;
struct efx_nic {int fec_config; int loopback_mode; int link_advertising; struct efx_mcdi_phy_data* phy_data; } ;
struct efx_mcdi_phy_data {int forced_cap; } ;


 int ETHTOOL_LINK_MODE_Autoneg_BIT ;
 int MC_CMD_PHY_CAP_AN_LBN ;
 int efx_get_mcdi_phy_flags (struct efx_nic*) ;
 int efx_mcdi_set_link (struct efx_nic*,int,int ,int ,int ) ;
 int ethtool_fec_caps_to_mcdi (int ) ;
 int ethtool_linkset_to_mcdi_cap (int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int efx_mcdi_phy_set_fecparam(struct efx_nic *efx,
         const struct ethtool_fecparam *fec)
{
 struct efx_mcdi_phy_data *phy_cfg = efx->phy_data;
 u32 caps;
 int rc;




 if (test_bit(ETHTOOL_LINK_MODE_Autoneg_BIT, efx->link_advertising))
  caps = (ethtool_linkset_to_mcdi_cap(efx->link_advertising) |
   1 << MC_CMD_PHY_CAP_AN_LBN);
 else
  caps = phy_cfg->forced_cap;

 caps |= ethtool_fec_caps_to_mcdi(fec->fec);
 rc = efx_mcdi_set_link(efx, caps, efx_get_mcdi_phy_flags(efx),
          efx->loopback_mode, 0);
 if (rc)
  return rc;


 efx->fec_config = fec->fec;
 return 0;
}
