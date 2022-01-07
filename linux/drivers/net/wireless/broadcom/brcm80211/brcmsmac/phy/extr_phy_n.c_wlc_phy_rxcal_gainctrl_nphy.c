
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int wlc_phy_rxcal_gainctrl_nphy_rev5 (struct brcms_phy*,int ,int *,int ) ;

__attribute__((used)) static void
wlc_phy_rxcal_gainctrl_nphy(struct brcms_phy *pi, u8 rx_core, u16 *rxgain,
       u8 cal_type)
{
 wlc_phy_rxcal_gainctrl_nphy_rev5(pi, rx_core, rxgain, cal_type);
}
