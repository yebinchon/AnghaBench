
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int mod_phy_reg (struct brcms_phy*,int,int,int) ;

__attribute__((used)) static void wlc_lcnphy_set_rx_iq_comp(struct brcms_phy *pi, u16 a, u16 b)
{
 mod_phy_reg(pi, 0x645, (0x3ff << 0), (a) << 0);

 mod_phy_reg(pi, 0x646, (0x3ff << 0), (b) << 0);

 mod_phy_reg(pi, 0x647, (0x3ff << 0), (a) << 0);

 mod_phy_reg(pi, 0x648, (0x3ff << 0), (b) << 0);

 mod_phy_reg(pi, 0x649, (0x3ff << 0), (a) << 0);

 mod_phy_reg(pi, 0x64a, (0x3ff << 0), (b) << 0);

}
