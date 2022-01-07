
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;


 int DV331812_17 ;
 int DV331812_33 ;
 int DV331812_MASK ;
 int DV331812_VDD1 ;
 int EINVAL ;
 int LDO_CONFIG2 ;
 int LDO_DV18_CFG ;


 int SD_IO_USING_1V8 ;
 int SD_PAD_CTL ;
 int rts5260_fill_driving (struct rtsx_pcr*,int) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static int rts5260_switch_output_voltage(struct rtsx_pcr *pcr, u8 voltage)
{
 switch (voltage) {
 case 128:
  rtsx_pci_write_register(pcr, LDO_CONFIG2,
     DV331812_VDD1, DV331812_VDD1);
  rtsx_pci_write_register(pcr, LDO_DV18_CFG,
     DV331812_MASK, DV331812_33);
  rtsx_pci_write_register(pcr, SD_PAD_CTL, SD_IO_USING_1V8, 0);
  break;
 case 129:
  rtsx_pci_write_register(pcr, LDO_CONFIG2,
     DV331812_VDD1, DV331812_VDD1);
  rtsx_pci_write_register(pcr, LDO_DV18_CFG,
     DV331812_MASK, DV331812_17);
  rtsx_pci_write_register(pcr, SD_PAD_CTL, SD_IO_USING_1V8,
     SD_IO_USING_1V8);
  break;
 default:
  return -EINVAL;
 }


 rts5260_fill_driving(pcr, voltage);

 return 0;
}
