
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_macphyclk_set (int ,int) ;

void wlapi_bmac_macphyclk_set(struct phy_shim_info *physhim, bool clk)
{
 brcms_b_macphyclk_set(physhim->wlc_hw, clk);
}
