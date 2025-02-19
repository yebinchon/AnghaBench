
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct brcms_phy {int radio_chanspec; } ;


 scalar_t__ AFE_CLK_INIT_MODE_PAPD ;
 scalar_t__ AFE_CLK_INIT_MODE_TXRX2X ;
 scalar_t__ CHSPEC_IS40 (int ) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int wlc_lcnphy_toggle_afe_pwdn (struct brcms_phy*) ;
 int write_phy_reg (struct brcms_phy*,int,int) ;

__attribute__((used)) static void wlc_lcnphy_afe_clk_init(struct brcms_phy *pi, u8 mode)
{
 u8 phybw40;
 phybw40 = CHSPEC_IS40(pi->radio_chanspec);

 mod_phy_reg(pi, 0x6d1, (0x1 << 7), (1) << 7);

 if (((mode == AFE_CLK_INIT_MODE_PAPD) && (phybw40 == 0)) ||
     (mode == AFE_CLK_INIT_MODE_TXRX2X))
  write_phy_reg(pi, 0x6d0, 0x7);

 wlc_lcnphy_toggle_afe_pwdn(pi);
}
