
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int radio_chanspec; } ;


 scalar_t__ CHSPEC_IS2G (int ) ;
 int and_phy_reg (struct brcms_phy*,int,int ) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int wlc_lcnphy_set_trsw_override (struct brcms_phy*,int,int) ;

void wlc_lcnphy_tx_pu(struct brcms_phy *pi, bool bEnable)
{
 if (!bEnable) {

  and_phy_reg(pi, 0x43b, ~(u16) ((0x1 << 1) | (0x1 << 4)));

  mod_phy_reg(pi, 0x43c, (0x1 << 1), 1 << 1);

  and_phy_reg(pi, 0x44c,
       ~(u16) ((0x1 << 3) |
        (0x1 << 5) |
        (0x1 << 12) |
        (0x1 << 0) | (0x1 << 1) | (0x1 << 2)));

  and_phy_reg(pi, 0x44d,
       ~(u16) ((0x1 << 3) | (0x1 << 5) | (0x1 << 14)));
  mod_phy_reg(pi, 0x44d, (0x1 << 2), 1 << 2);

  mod_phy_reg(pi, 0x44d, (0x1 << 1) | (0x1 << 0), (0x1 << 0));

  and_phy_reg(pi, 0x4f9,
       ~(u16) ((0x1 << 0) | (0x1 << 1) | (0x1 << 2)));

  and_phy_reg(pi, 0x4fa,
       ~(u16) ((0x1 << 0) | (0x1 << 1) | (0x1 << 2)));
 } else {

  mod_phy_reg(pi, 0x43b, (0x1 << 1), 1 << 1);
  mod_phy_reg(pi, 0x43c, (0x1 << 1), 0 << 1);

  mod_phy_reg(pi, 0x43b, (0x1 << 4), 1 << 4);
  mod_phy_reg(pi, 0x43c, (0x1 << 6), 0 << 6);

  mod_phy_reg(pi, 0x44c, (0x1 << 12), 1 << 12);
  mod_phy_reg(pi, 0x44d, (0x1 << 14), 1 << 14);

  wlc_lcnphy_set_trsw_override(pi, 1, 0);

  mod_phy_reg(pi, 0x44d, (0x1 << 2), 0 << 2);
  mod_phy_reg(pi, 0x44c, (0x1 << 2), 1 << 2);

  if (CHSPEC_IS2G(pi->radio_chanspec)) {

   mod_phy_reg(pi, 0x44c, (0x1 << 3), 1 << 3);
   mod_phy_reg(pi, 0x44d, (0x1 << 3), 1 << 3);

   mod_phy_reg(pi, 0x44c, (0x1 << 5), 1 << 5);
   mod_phy_reg(pi, 0x44d, (0x1 << 5), 0 << 5);

   mod_phy_reg(pi, 0x4f9, (0x1 << 1), 1 << 1);
   mod_phy_reg(pi, 0x4fa, (0x1 << 1), 1 << 1);

   mod_phy_reg(pi, 0x4f9, (0x1 << 2), 1 << 2);
   mod_phy_reg(pi, 0x4fa, (0x1 << 2), 1 << 2);

   mod_phy_reg(pi, 0x4f9, (0x1 << 0), 1 << 0);
   mod_phy_reg(pi, 0x4fa, (0x1 << 0), 1 << 0);
  } else {

   mod_phy_reg(pi, 0x44c, (0x1 << 3), 1 << 3);
   mod_phy_reg(pi, 0x44d, (0x1 << 3), 0 << 3);

   mod_phy_reg(pi, 0x44c, (0x1 << 5), 1 << 5);
   mod_phy_reg(pi, 0x44d, (0x1 << 5), 1 << 5);

   mod_phy_reg(pi, 0x4f9, (0x1 << 1), 1 << 1);
   mod_phy_reg(pi, 0x4fa, (0x1 << 1), 0 << 1);

   mod_phy_reg(pi, 0x4f9, (0x1 << 2), 1 << 2);
   mod_phy_reg(pi, 0x4fa, (0x1 << 2), 0 << 2);

   mod_phy_reg(pi, 0x4f9, (0x1 << 0), 1 << 0);
   mod_phy_reg(pi, 0x4fa, (0x1 << 0), 0 << 0);
  }
 }
}
