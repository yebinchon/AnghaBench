
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_phy {TYPE_1__* sh; int d11core; } ;
struct TYPE_2__ {int physhim; int corerev; } ;


 int D11REGOFFS (int ) ;
 scalar_t__ D11REV_IS (int ,int) ;
 int MCTL_EN_MAC ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int read_phy_reg (struct brcms_phy*,int) ;
 int wlapi_enable_mac (int ) ;
 int wlapi_suspend_mac_and_wait (int ) ;

u16 wlc_phy_classifier_nphy(struct brcms_phy *pi, u16 mask, u16 val)
{
 u16 curr_ctl, new_ctl;
 bool suspended = 0;

 if (D11REV_IS(pi->sh->corerev, 16)) {
  suspended = (bcma_read32(pi->d11core, D11REGOFFS(maccontrol)) &
        MCTL_EN_MAC) ? 0 : 1;
  if (!suspended)
   wlapi_suspend_mac_and_wait(pi->sh->physhim);
 }

 curr_ctl = read_phy_reg(pi, 0xb0) & (0x7 << 0);

 new_ctl = (curr_ctl & (~mask)) | (val & mask);

 mod_phy_reg(pi, 0xb0, (0x7 << 0), new_ctl);

 if (D11REV_IS(pi->sh->corerev, 16) && !suspended)
  wlapi_enable_mac(pi->sh->physhim);

 return new_ctl;
}
