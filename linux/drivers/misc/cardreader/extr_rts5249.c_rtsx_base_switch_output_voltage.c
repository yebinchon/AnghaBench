
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_pcr {int dummy; } ;


 int CHK_PCI_PID (struct rtsx_pcr*,int) ;
 int EINVAL ;


 int PHY_BACR ;
 int PHY_BACR_BASIC_MASK ;
 int PHY_TUNE ;
 int PHY_TUNE_D18_1V7 ;
 int PHY_TUNE_D18_1V8 ;
 int PHY_TUNE_VOLTAGE_3V3 ;
 int PHY_TUNE_VOLTAGE_MASK ;
 int pcr_dbg (struct rtsx_pcr*,char*,int ) ;
 int rts5249_fill_driving (struct rtsx_pcr*,int ) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;
 int rtsx_pci_update_phy (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static int rtsx_base_switch_output_voltage(struct rtsx_pcr *pcr, u8 voltage)
{
 int err;
 u16 append;

 switch (voltage) {
 case 128:
  err = rtsx_pci_update_phy(pcr, PHY_TUNE, PHY_TUNE_VOLTAGE_MASK,
   PHY_TUNE_VOLTAGE_3V3);
  if (err < 0)
   return err;
  break;
 case 129:
  append = PHY_TUNE_D18_1V8;
  if (CHK_PCI_PID(pcr, 0x5249)) {
   err = rtsx_pci_update_phy(pcr, PHY_BACR,
    PHY_BACR_BASIC_MASK, 0);
   if (err < 0)
    return err;
   append = PHY_TUNE_D18_1V7;
  }

  err = rtsx_pci_update_phy(pcr, PHY_TUNE, PHY_TUNE_VOLTAGE_MASK,
   append);
  if (err < 0)
   return err;
  break;
 default:
  pcr_dbg(pcr, "unknown output voltage %d\n", voltage);
  return -EINVAL;
 }


 rtsx_pci_init_cmd(pcr);
 rts5249_fill_driving(pcr, voltage);
 return rtsx_pci_send_cmd(pcr, 100);
}
