
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;


 int EINVAL ;
 int LDO_CONFIG2 ;
 int LDO_D3318_18V ;
 int LDO_D3318_33V ;
 int LDO_D3318_MASK ;


 int SD_IO_USING_1V8 ;
 int SD_PAD_CTL ;
 int rts5249_fill_driving (struct rtsx_pcr*,int ) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static int rts525a_switch_output_voltage(struct rtsx_pcr *pcr, u8 voltage)
{
 switch (voltage) {
 case 128:
  rtsx_pci_write_register(pcr, LDO_CONFIG2,
   LDO_D3318_MASK, LDO_D3318_33V);
  rtsx_pci_write_register(pcr, SD_PAD_CTL, SD_IO_USING_1V8, 0);
  break;
 case 129:
  rtsx_pci_write_register(pcr, LDO_CONFIG2,
   LDO_D3318_MASK, LDO_D3318_18V);
  rtsx_pci_write_register(pcr, SD_PAD_CTL, SD_IO_USING_1V8,
   SD_IO_USING_1V8);
  break;
 default:
  return -EINVAL;
 }

 rtsx_pci_init_cmd(pcr);
 rts5249_fill_driving(pcr, voltage);
 return rtsx_pci_send_cmd(pcr, 100);
}
