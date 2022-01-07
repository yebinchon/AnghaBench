
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_hardware {int d11core; int clk; } ;
struct brcms_c_info {int macintmask; struct brcms_hardware* hw; } ;


 int D11REGOFFS (int ) ;
 int bcma_write32 (int ,int ,int ) ;

void brcms_c_intrsrestore(struct brcms_c_info *wlc, u32 macintmask)
{
 struct brcms_hardware *wlc_hw = wlc->hw;
 if (!wlc_hw->clk)
  return;

 wlc->macintmask = macintmask;
 bcma_write32(wlc_hw->d11core, D11REGOFFS(macintmask), wlc->macintmask);
}
