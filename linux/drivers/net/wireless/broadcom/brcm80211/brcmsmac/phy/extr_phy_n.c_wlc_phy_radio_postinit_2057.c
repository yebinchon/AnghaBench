
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy {scalar_t__ phy_init_por; } ;


 int RADIO_2057_RFPLL_MASTER ;
 int RADIO_2057_RFPLL_MISC_CAL_RESETN ;
 int RADIO_2057_XTALPUOVR_PINCTRL ;
 int RADIO_2057_XTAL_CONFIG2 ;
 int mdelay (int) ;
 int mod_radio_reg (struct brcms_phy*,int ,int,int) ;
 int wlc_phy_radio2057_rccal (struct brcms_phy*) ;
 int wlc_phy_radio205x_rcal (struct brcms_phy*) ;

__attribute__((used)) static void wlc_phy_radio_postinit_2057(struct brcms_phy *pi)
{

 mod_radio_reg(pi, RADIO_2057_XTALPUOVR_PINCTRL, 0x1, 0x1);

 mod_radio_reg(pi, RADIO_2057_RFPLL_MISC_CAL_RESETN, 0x78, 0x78);
 mod_radio_reg(pi, RADIO_2057_XTAL_CONFIG2, 0x80, 0x80);
 mdelay(2);
 mod_radio_reg(pi, RADIO_2057_RFPLL_MISC_CAL_RESETN, 0x78, 0x0);
 mod_radio_reg(pi, RADIO_2057_XTAL_CONFIG2, 0x80, 0x0);

 if (pi->phy_init_por) {
  wlc_phy_radio205x_rcal(pi);
  wlc_phy_radio2057_rccal(pi);
 }

 mod_radio_reg(pi, RADIO_2057_RFPLL_MASTER, 0x8, 0x0);
}
