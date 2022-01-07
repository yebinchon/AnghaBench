
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct brcms_hardware {struct bcma_device* d11core; } ;
struct brcms_c_info {int beacon_template_virgin; int defmacintmask; struct brcms_hardware* hw; } ;
struct bcma_device {int dummy; } ;


 int D11REGOFFS (int ) ;
 int MCMD_BCN0VLD ;
 int MCMD_BCN1VLD ;
 int MI_BCNTPL ;
 int bcma_read32 (struct bcma_device*,int ) ;
 int bcma_set32 (struct bcma_device*,int ,int) ;
 int bcma_write32 (struct bcma_device*,int ,int ) ;
 int brcms_c_beacon_write (struct brcms_c_info*,struct sk_buff*,int ,int ,int,int) ;
 int maccommand ;
 int macintstatus ;

__attribute__((used)) static void brcms_c_update_beacon_hw(struct brcms_c_info *wlc,
         struct sk_buff *beacon, u16 tim_offset,
         u16 dtim_period)
{
 struct brcms_hardware *wlc_hw = wlc->hw;
 struct bcma_device *core = wlc_hw->d11core;


 u32 both_valid = MCMD_BCN0VLD | MCMD_BCN1VLD;




 if ((bcma_read32(core, D11REGOFFS(maccommand)) & both_valid) == both_valid)

  bcma_write32(core, D11REGOFFS(macintstatus), MI_BCNTPL);

 if (wlc->beacon_template_virgin) {
  wlc->beacon_template_virgin = 0;
  brcms_c_beacon_write(wlc, beacon, tim_offset, dtim_period, 1,
         1);

  bcma_set32(core, D11REGOFFS(maccommand), MCMD_BCN0VLD);
  return;
 }




 if ((bcma_read32(core, D11REGOFFS(maccommand)) & both_valid) == both_valid) {
  wlc->defmacintmask |= MI_BCNTPL;
  return;
 }

 if (!(bcma_read32(core, D11REGOFFS(maccommand)) & MCMD_BCN0VLD)) {
  brcms_c_beacon_write(wlc, beacon, tim_offset, dtim_period, 1,
         0);

  bcma_set32(core, D11REGOFFS(maccommand), MCMD_BCN0VLD);
  return;
 }
 if (!(bcma_read32(core, D11REGOFFS(maccommand)) & MCMD_BCN1VLD)) {
  brcms_c_beacon_write(wlc, beacon, tim_offset, dtim_period,
         0, 1);

  bcma_set32(core, D11REGOFFS(maccommand), MCMD_BCN1VLD);
  return;
 }
 return;
}
