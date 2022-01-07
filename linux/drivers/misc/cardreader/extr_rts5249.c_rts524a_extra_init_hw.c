
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int FORCE_ASPM_L1_EN ;
 int FUNC_FORCE_CTL ;
 int IC_VER_A ;
 int LDO_DV12S_CFG ;
 int LDO_DV18_CFG ;
 int LDO_DV18_SR_DF ;
 int LDO_DV18_SR_MASK ;
 int LDO_REF12_TUNE_DF ;
 int LDO_REF12_TUNE_MASK ;
 int LDO_VCC_CFG1 ;
 int LDO_VCC_LMT_EN ;
 int LDO_VCC_REF_1V2 ;
 int LDO_VCC_REF_TUNE_MASK ;
 int LDO_VIO_CFG ;
 int LDO_VIO_REF_1V2 ;
 int LDO_VIO_REF_TUNE_MASK ;
 int LDO_VIO_SR_DF ;
 int LDO_VIO_SR_MASK ;
 int PCLK_CTL ;
 int PCLK_MODE_SEL ;
 int PME_DEBUG_0 ;
 int PM_EVENT_DEBUG ;
 int SD40_LDO_CTL1 ;
 int SD40_VIO_TUNE_1V7 ;
 int SD40_VIO_TUNE_MASK ;
 scalar_t__ is_version (struct rtsx_pcr*,int,int ) ;
 int rts5249_extra_init_hw (struct rtsx_pcr*) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static int rts524a_extra_init_hw(struct rtsx_pcr *pcr)
{
 rts5249_extra_init_hw(pcr);

 rtsx_pci_write_register(pcr, FUNC_FORCE_CTL,
  FORCE_ASPM_L1_EN, FORCE_ASPM_L1_EN);
 rtsx_pci_write_register(pcr, PM_EVENT_DEBUG, PME_DEBUG_0, PME_DEBUG_0);
 rtsx_pci_write_register(pcr, LDO_VCC_CFG1, LDO_VCC_LMT_EN,
  LDO_VCC_LMT_EN);
 rtsx_pci_write_register(pcr, PCLK_CTL, PCLK_MODE_SEL, PCLK_MODE_SEL);
 if (is_version(pcr, 0x524A, IC_VER_A)) {
  rtsx_pci_write_register(pcr, LDO_DV18_CFG,
   LDO_DV18_SR_MASK, LDO_DV18_SR_DF);
  rtsx_pci_write_register(pcr, LDO_VCC_CFG1,
   LDO_VCC_REF_TUNE_MASK, LDO_VCC_REF_1V2);
  rtsx_pci_write_register(pcr, LDO_VIO_CFG,
   LDO_VIO_REF_TUNE_MASK, LDO_VIO_REF_1V2);
  rtsx_pci_write_register(pcr, LDO_VIO_CFG,
   LDO_VIO_SR_MASK, LDO_VIO_SR_DF);
  rtsx_pci_write_register(pcr, LDO_DV12S_CFG,
   LDO_REF12_TUNE_MASK, LDO_REF12_TUNE_DF);
  rtsx_pci_write_register(pcr, SD40_LDO_CTL1,
   SD40_VIO_TUNE_MASK, SD40_VIO_TUNE_1V7);
 }

 return 0;
}
