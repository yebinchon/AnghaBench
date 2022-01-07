
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_mctrl (int ,int ,int ) ;

void wlapi_bmac_mctrl(struct phy_shim_info *physhim, u32 mask, u32 val)
{
 brcms_b_mctrl(physhim->wlc_hw, mask, val);
}
