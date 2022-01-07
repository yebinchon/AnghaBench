
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int read_phy_reg (struct brcms_phy*,int) ;
 int write_phy_reg (struct brcms_phy*,int,int) ;

__attribute__((used)) static void wlc_lcnphy_toggle_afe_pwdn(struct brcms_phy *pi)
{
 u16 save_AfeCtrlOvrVal, save_AfeCtrlOvr;

 save_AfeCtrlOvrVal = read_phy_reg(pi, 0x43c);
 save_AfeCtrlOvr = read_phy_reg(pi, 0x43b);

 write_phy_reg(pi, 0x43c, save_AfeCtrlOvrVal | 0x1);
 write_phy_reg(pi, 0x43b, save_AfeCtrlOvr | 0x1);

 write_phy_reg(pi, 0x43c, save_AfeCtrlOvrVal & 0xfffe);
 write_phy_reg(pi, 0x43b, save_AfeCtrlOvr & 0xfffe);

 write_phy_reg(pi, 0x43c, save_AfeCtrlOvrVal);
 write_phy_reg(pi, 0x43b, save_AfeCtrlOvr);
}
