
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtsx_pcr {scalar_t__ sd30_drive_sel_3v3; scalar_t__ sd30_drive_sel_1v8; } ;


 int BPP_ASIC_3V3 ;
 int BPP_PAD_1V8 ;
 int BPP_PAD_3V3 ;
 int BPP_PAD_MASK ;
 int BPP_REG_TUNED18 ;
 int EINVAL ;
 int LDO_CTL ;
 scalar_t__ OUTPUT_1V8 ;
 scalar_t__ OUTPUT_3V3 ;
 int SD30_DRIVE_SEL ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int rtl8411_do_switch_output_voltage(struct rtsx_pcr *pcr, u8 voltage,
  int bpp_tuned18_shift, int bpp_asic_1v8)
{
 u8 mask, val;
 int err;

 mask = (BPP_REG_TUNED18 << bpp_tuned18_shift) | BPP_PAD_MASK;
 if (voltage == OUTPUT_3V3) {
  err = rtsx_pci_write_register(pcr,
    SD30_DRIVE_SEL, 0x07, pcr->sd30_drive_sel_3v3);
  if (err < 0)
   return err;
  val = (BPP_ASIC_3V3 << bpp_tuned18_shift) | BPP_PAD_3V3;
 } else if (voltage == OUTPUT_1V8) {
  err = rtsx_pci_write_register(pcr,
    SD30_DRIVE_SEL, 0x07, pcr->sd30_drive_sel_1v8);
  if (err < 0)
   return err;
  val = (bpp_asic_1v8 << bpp_tuned18_shift) | BPP_PAD_1V8;
 } else {
  return -EINVAL;
 }

 return rtsx_pci_write_register(pcr, LDO_CTL, mask, val);
}
