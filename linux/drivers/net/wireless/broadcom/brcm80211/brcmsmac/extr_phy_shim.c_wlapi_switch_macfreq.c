
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_switch_macfreq (int ,int ) ;

void wlapi_switch_macfreq(struct phy_shim_info *physhim, u8 spurmode)
{
 brcms_b_switch_macfreq(physhim->wlc_hw, spurmode);
}
