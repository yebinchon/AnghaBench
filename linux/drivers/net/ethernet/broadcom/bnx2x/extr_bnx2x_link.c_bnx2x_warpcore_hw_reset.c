
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MISC_REG_LCPLL_E40_PWRDWN ;
 int MISC_REG_LCPLL_E40_RESETB_ANA ;
 int MISC_REG_LCPLL_E40_RESETB_DIG ;
 int MISC_REG_WC0_RESET ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int bnx2x_warpcore_power_module (struct link_params*,int ) ;

__attribute__((used)) static void bnx2x_warpcore_hw_reset(struct bnx2x_phy *phy,
        struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 bnx2x_warpcore_power_module(params, 0);

 REG_WR(bp, MISC_REG_WC0_RESET, 0x0c0e);


 REG_WR(bp, MISC_REG_LCPLL_E40_PWRDWN, 1);
 REG_WR(bp, MISC_REG_LCPLL_E40_RESETB_ANA, 0);
 REG_WR(bp, MISC_REG_LCPLL_E40_RESETB_DIG, 0);
}
