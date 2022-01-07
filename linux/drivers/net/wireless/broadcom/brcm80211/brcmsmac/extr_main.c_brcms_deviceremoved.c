
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcms_c_info {TYPE_1__* hw; } ;
struct TYPE_2__ {int d11core; int sih; int clk; } ;


 int D11REGOFFS (int ) ;
 int MCTL_IHR_EN ;
 int MCTL_PSM_JMP_0 ;
 int ai_deviceremoved (int ) ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;

__attribute__((used)) static bool brcms_deviceremoved(struct brcms_c_info *wlc)
{
 u32 macctrl;

 if (!wlc->hw->clk)
  return ai_deviceremoved(wlc->hw->sih);
 macctrl = bcma_read32(wlc->hw->d11core,
         D11REGOFFS(maccontrol));
 return (macctrl & (MCTL_PSM_JMP_0 | MCTL_IHR_EN)) != MCTL_IHR_EN;
}
