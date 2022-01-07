
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int read_phy_reg (struct brcms_phy*,int) ;

__attribute__((used)) static void wlc_lcnphy_set_dac_gain(struct brcms_phy *pi, u16 dac_gain)
{
 u16 dac_ctrl;

 dac_ctrl = (read_phy_reg(pi, 0x439) >> 0);
 dac_ctrl = dac_ctrl & 0xc7f;
 dac_ctrl = dac_ctrl | (dac_gain << 7);
 mod_phy_reg(pi, 0x439, (0xfff << 0), (dac_ctrl) << 0);

}
