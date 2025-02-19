
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct brcms_phy_lcnphy {int lcnphy_tempsense_option; } ;
struct TYPE_3__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_2__* sh; scalar_t__ hwpwrctrl_capable; int d11core; TYPE_1__ u; } ;
typedef int s32 ;
struct TYPE_4__ {int physhim; } ;


 int D11REGOFFS (int ) ;
 int MCTL_EN_MAC ;
 int TEMPSENSE ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int read_phy_reg (struct brcms_phy*,int) ;
 int udelay (int) ;
 int wlapi_enable_mac (int ) ;
 int wlapi_suspend_mac_and_wait (int ) ;
 int wlc_lcnphy_get_tx_pwr_ctrl (struct brcms_phy*) ;
 int wlc_lcnphy_set_tx_pwr_ctrl (struct brcms_phy*,int) ;
 int wlc_lcnphy_vbat_temp_sense_setup (struct brcms_phy*,int ) ;

u16 wlc_lcnphy_tempsense(struct brcms_phy *pi, bool mode)
{
 u16 tempsenseval1, tempsenseval2;
 s32 avg = 0;
 bool suspend = 0;
 u16 SAVE_txpwrctrl = wlc_lcnphy_get_tx_pwr_ctrl(pi);
 struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

 if (mode == 1) {
  suspend = (0 == (bcma_read32(pi->d11core,
          D11REGOFFS(maccontrol)) &
     MCTL_EN_MAC));
  if (!suspend)
   wlapi_suspend_mac_and_wait(pi->sh->physhim);
  wlc_lcnphy_vbat_temp_sense_setup(pi, TEMPSENSE);
 }
 tempsenseval1 = read_phy_reg(pi, 0x476) & 0x1FF;
 tempsenseval2 = read_phy_reg(pi, 0x477) & 0x1FF;

 if (tempsenseval1 > 255)
  avg = (int)(tempsenseval1 - 512);
 else
  avg = (int)tempsenseval1;

 if (pi_lcn->lcnphy_tempsense_option == 1 || pi->hwpwrctrl_capable) {
  if (tempsenseval2 > 255)
   avg = (int)(avg - tempsenseval2 + 512);
  else
   avg = (int)(avg - tempsenseval2);
 } else {
  if (tempsenseval2 > 255)
   avg = (int)(avg + tempsenseval2 - 512);
  else
   avg = (int)(avg + tempsenseval2);
  avg = avg / 2;
 }
 if (avg < 0)
  avg = avg + 512;

 if (pi_lcn->lcnphy_tempsense_option == 2)
  avg = tempsenseval1;

 if (mode)
  wlc_lcnphy_set_tx_pwr_ctrl(pi, SAVE_txpwrctrl);

 if (mode == 1) {

  mod_phy_reg(pi, 0x448, (0x1 << 14), (1) << 14);

  udelay(100);
  mod_phy_reg(pi, 0x448, (0x1 << 14), (0) << 14);

  if (!suspend)
   wlapi_enable_mac(pi->sh->physhim);
 }
 return (u16) avg;
}
