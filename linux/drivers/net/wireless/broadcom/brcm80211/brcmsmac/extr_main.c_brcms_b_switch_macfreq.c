
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct brcms_hardware {int band; int sih; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;


 scalar_t__ BCMA_CHIP_ID_BCM43224 ;
 scalar_t__ BCMA_CHIP_ID_BCM43225 ;
 scalar_t__ BRCMS_ISLCNPHY (int ) ;
 int D11REGOFFS (int ) ;
 scalar_t__ WL_SPURAVOID_ON1 ;
 scalar_t__ WL_SPURAVOID_ON2 ;
 scalar_t__ ai_get_chip_id (int ) ;
 int bcma_write16 (struct bcma_device*,int ,int) ;
 int tsf_clk_frac_h ;
 int tsf_clk_frac_l ;

void brcms_b_switch_macfreq(struct brcms_hardware *wlc_hw, u8 spurmode)
{
 struct bcma_device *core = wlc_hw->d11core;

 if ((ai_get_chip_id(wlc_hw->sih) == BCMA_CHIP_ID_BCM43224) ||
     (ai_get_chip_id(wlc_hw->sih) == BCMA_CHIP_ID_BCM43225)) {
  if (spurmode == WL_SPURAVOID_ON2) {
   bcma_write16(core, D11REGOFFS(tsf_clk_frac_l), 0x2082);
   bcma_write16(core, D11REGOFFS(tsf_clk_frac_h), 0x8);
  } else if (spurmode == WL_SPURAVOID_ON1) {
   bcma_write16(core, D11REGOFFS(tsf_clk_frac_l), 0x5341);
   bcma_write16(core, D11REGOFFS(tsf_clk_frac_h), 0x8);
  } else {
   bcma_write16(core, D11REGOFFS(tsf_clk_frac_l), 0x8889);
   bcma_write16(core, D11REGOFFS(tsf_clk_frac_h), 0x8);
  }
 } else if (BRCMS_ISLCNPHY(wlc_hw->band)) {
  if (spurmode == WL_SPURAVOID_ON1) {
   bcma_write16(core, D11REGOFFS(tsf_clk_frac_l), 0x7CE0);
   bcma_write16(core, D11REGOFFS(tsf_clk_frac_h), 0xC);
  } else {
   bcma_write16(core, D11REGOFFS(tsf_clk_frac_l), 0xCCCD);
   bcma_write16(core, D11REGOFFS(tsf_clk_frac_h), 0xC);
  }
 }
}
