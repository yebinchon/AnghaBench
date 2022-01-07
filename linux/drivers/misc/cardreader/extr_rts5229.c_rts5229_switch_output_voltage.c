
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtsx_pcr {int sd30_drive_sel_1v8; int sd30_drive_sel_3v3; } ;


 int EINVAL ;
 scalar_t__ OUTPUT_1V8 ;
 scalar_t__ OUTPUT_3V3 ;
 int SD30_DRIVE_SEL ;
 int rtsx_pci_write_phy_register (struct rtsx_pcr*,int,int) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int ) ;

__attribute__((used)) static int rts5229_switch_output_voltage(struct rtsx_pcr *pcr, u8 voltage)
{
 int err;

 if (voltage == OUTPUT_3V3) {
  err = rtsx_pci_write_register(pcr,
    SD30_DRIVE_SEL, 0x07, pcr->sd30_drive_sel_3v3);
  if (err < 0)
   return err;
  err = rtsx_pci_write_phy_register(pcr, 0x08, 0x4FC0 | 0x24);
  if (err < 0)
   return err;
 } else if (voltage == OUTPUT_1V8) {
  err = rtsx_pci_write_register(pcr,
    SD30_DRIVE_SEL, 0x07, pcr->sd30_drive_sel_1v8);
  if (err < 0)
   return err;
  err = rtsx_pci_write_phy_register(pcr, 0x08, 0x4C40 | 0x24);
  if (err < 0)
   return err;
 } else {
  return -EINVAL;
 }

 return 0;
}
