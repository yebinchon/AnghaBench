
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy {int radio_chanspec; } ;


 scalar_t__ CHSPEC_IS5G (int ) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;

__attribute__((used)) static void wlc_lcnphy_rev2_baseband_init(struct brcms_phy *pi)
{
 if (CHSPEC_IS5G(pi->radio_chanspec)) {
  mod_phy_reg(pi, 0x416, (0xff << 0), 80 << 0);
  mod_phy_reg(pi, 0x416, (0xff << 8), 80 << 8);
 }
}
