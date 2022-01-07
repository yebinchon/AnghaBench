
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy {int dummy; } ;


 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int or_phy_reg (struct brcms_phy*,int,int) ;

__attribute__((used)) static void wlc_lcnphy_set_trsw_override(struct brcms_phy *pi, bool tx, bool rx)
{

 mod_phy_reg(pi, 0x44d,
      (0x1 << 1) |
      (0x1 << 0), (tx ? (0x1 << 1) : 0) | (rx ? (0x1 << 0) : 0));

 or_phy_reg(pi, 0x44c, (0x1 << 1) | (0x1 << 0));
}
