
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_hardware {int d11core; scalar_t__ mute_override; scalar_t__ wake_override; int maccontrol; } ;


 int D11REGOFFS (int ) ;
 int MCTL_AP ;
 int MCTL_INFRA ;
 int MCTL_WAKE ;
 int bcma_write32 (int ,int ,int ) ;

__attribute__((used)) static void brcms_c_mctrl_write(struct brcms_hardware *wlc_hw)
{
 u32 maccontrol = wlc_hw->maccontrol;


 if (wlc_hw->wake_override)
  maccontrol |= MCTL_WAKE;


 if (wlc_hw->mute_override) {
  maccontrol &= ~(MCTL_AP);
  maccontrol |= MCTL_INFRA;
 }

 bcma_write32(wlc_hw->d11core, D11REGOFFS(maccontrol),
       maccontrol);
}
