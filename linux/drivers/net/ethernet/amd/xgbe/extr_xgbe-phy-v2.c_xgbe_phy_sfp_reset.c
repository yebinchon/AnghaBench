
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_data {int sfp_mod_absent; int sfp_speed; int sfp_cable; int sfp_base; scalar_t__ sfp_tx_fault; scalar_t__ sfp_rx_los; } ;


 int XGBE_SFP_BASE_UNKNOWN ;
 int XGBE_SFP_CABLE_UNKNOWN ;
 int XGBE_SFP_SPEED_UNKNOWN ;

__attribute__((used)) static void xgbe_phy_sfp_reset(struct xgbe_phy_data *phy_data)
{
 phy_data->sfp_rx_los = 0;
 phy_data->sfp_tx_fault = 0;
 phy_data->sfp_mod_absent = 1;
 phy_data->sfp_base = XGBE_SFP_BASE_UNKNOWN;
 phy_data->sfp_cable = XGBE_SFP_CABLE_UNKNOWN;
 phy_data->sfp_speed = XGBE_SFP_SPEED_UNKNOWN;
}
