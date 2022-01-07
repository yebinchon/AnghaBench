
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_phy_lcnphy {int lcnphy_rssi_vc; int lcnphy_rssi_vf; int lcnphy_rssi_gs; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;


 int RADIO_2064_REG07C ;
 int RADIO_2064_REG082 ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int mod_radio_reg (struct brcms_phy*,int ,int,int) ;

__attribute__((used)) static void wlc_lcnphy_pwrctrl_rssiparams(struct brcms_phy *pi)
{
 u16 auxpga_vmid, auxpga_vmid_temp, auxpga_gain_temp;
 struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

 auxpga_vmid = (2 << 8) |
        (pi_lcn->lcnphy_rssi_vc << 4) | pi_lcn->lcnphy_rssi_vf;
 auxpga_vmid_temp = (2 << 8) | (8 << 4) | 4;
 auxpga_gain_temp = 2;

 mod_phy_reg(pi, 0x4d8, (0x1 << 0), (0) << 0);

 mod_phy_reg(pi, 0x4d8, (0x1 << 1), (0) << 1);

 mod_phy_reg(pi, 0x4d7, (0x1 << 3), (0) << 3);

 mod_phy_reg(pi, 0x4db,
      (0x3ff << 0) |
      (0x7 << 12),
      (auxpga_vmid << 0) | (pi_lcn->lcnphy_rssi_gs << 12));

 mod_phy_reg(pi, 0x4dc,
      (0x3ff << 0) |
      (0x7 << 12),
      (auxpga_vmid << 0) | (pi_lcn->lcnphy_rssi_gs << 12));

 mod_phy_reg(pi, 0x40a,
      (0x3ff << 0) |
      (0x7 << 12),
      (auxpga_vmid << 0) | (pi_lcn->lcnphy_rssi_gs << 12));

 mod_phy_reg(pi, 0x40b,
      (0x3ff << 0) |
      (0x7 << 12),
      (auxpga_vmid_temp << 0) | (auxpga_gain_temp << 12));

 mod_phy_reg(pi, 0x40c,
      (0x3ff << 0) |
      (0x7 << 12),
      (auxpga_vmid_temp << 0) | (auxpga_gain_temp << 12));

 mod_radio_reg(pi, RADIO_2064_REG082, (1 << 5), (1 << 5));
 mod_radio_reg(pi, RADIO_2064_REG07C, (1 << 0), (1 << 0));
}
