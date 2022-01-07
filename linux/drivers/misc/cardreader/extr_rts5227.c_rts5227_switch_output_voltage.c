
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;


 int EINVAL ;
 int OUTPUT_1V8 ;
 int OUTPUT_3V3 ;
 int rts5227_fill_driving (struct rtsx_pcr*,int ) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;
 int rtsx_pci_write_phy_register (struct rtsx_pcr*,int,int) ;

__attribute__((used)) static int rts5227_switch_output_voltage(struct rtsx_pcr *pcr, u8 voltage)
{
 int err;

 if (voltage == OUTPUT_3V3) {
  err = rtsx_pci_write_phy_register(pcr, 0x08, 0x4FC0 | 0x24);
  if (err < 0)
   return err;
 } else if (voltage == OUTPUT_1V8) {
  err = rtsx_pci_write_phy_register(pcr, 0x11, 0x3C02);
  if (err < 0)
   return err;
  err = rtsx_pci_write_phy_register(pcr, 0x08, 0x4C80 | 0x24);
  if (err < 0)
   return err;
 } else {
  return -EINVAL;
 }


 rtsx_pci_init_cmd(pcr);
 rts5227_fill_driving(pcr, voltage);
 return rtsx_pci_send_cmd(pcr, 100);
}
