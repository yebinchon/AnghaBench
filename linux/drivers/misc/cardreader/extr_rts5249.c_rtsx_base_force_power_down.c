
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtsx_pcr {scalar_t__ reg_pm_ctrl3; } ;


 scalar_t__ AUTOLOAD_CFG_BASE ;
 int D3_DELINK_MODE_EN ;
 scalar_t__ FPDCTL ;
 scalar_t__ HOST_ENTER_S3 ;
 int rtsx_pci_write_register (struct rtsx_pcr*,scalar_t__,int,int) ;

__attribute__((used)) static void rtsx_base_force_power_down(struct rtsx_pcr *pcr, u8 pm_state)
{

 rtsx_pci_write_register(pcr, AUTOLOAD_CFG_BASE + 1, 0xFF, 0);
 rtsx_pci_write_register(pcr, AUTOLOAD_CFG_BASE + 2, 0xFF, 0);
 rtsx_pci_write_register(pcr, AUTOLOAD_CFG_BASE + 3, 0x01, 0);

 if (pm_state == HOST_ENTER_S3)
  rtsx_pci_write_register(pcr, pcr->reg_pm_ctrl3,
   D3_DELINK_MODE_EN, D3_DELINK_MODE_EN);

 rtsx_pci_write_register(pcr, FPDCTL, 0x03, 0x03);
}
