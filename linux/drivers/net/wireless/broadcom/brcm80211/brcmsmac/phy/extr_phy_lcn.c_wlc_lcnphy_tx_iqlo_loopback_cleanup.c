
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int and_phy_reg (struct brcms_phy*,int,int) ;
 int * iqlo_loopback_rf_regs ;
 int write_radio_reg (struct brcms_phy*,int ,int ) ;

__attribute__((used)) static void
wlc_lcnphy_tx_iqlo_loopback_cleanup(struct brcms_phy *pi, u16 *values_to_save)
{
 int i;

 and_phy_reg(pi, 0x44c, 0x0 >> 11);

 and_phy_reg(pi, 0x43b, 0xC);

 for (i = 0; i < 20; i++)
  write_radio_reg(pi, iqlo_loopback_rf_regs[i],
    values_to_save[i]);
}
