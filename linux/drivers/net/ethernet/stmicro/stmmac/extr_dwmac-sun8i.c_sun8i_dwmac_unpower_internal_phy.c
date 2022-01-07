
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_priv_data {int internal_phy_powered; int rst_ephy; int ephy_clk; } ;


 int clk_disable_unprepare (int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int sun8i_dwmac_unpower_internal_phy(struct sunxi_priv_data *gmac)
{
 if (!gmac->internal_phy_powered)
  return 0;

 clk_disable_unprepare(gmac->ephy_clk);
 reset_control_assert(gmac->rst_ephy);
 gmac->internal_phy_powered = 0;
 return 0;
}
