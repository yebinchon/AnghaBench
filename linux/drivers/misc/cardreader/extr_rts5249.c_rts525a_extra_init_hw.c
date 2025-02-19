
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int IC_VER_A ;
 int L1SUB_AUTO_CFG ;
 int L1SUB_CONFIG2 ;
 int LDO_AV12S_CFG ;
 int LDO_AV12S_TUNE_DF ;
 int LDO_AV12S_TUNE_MASK ;
 int LDO_D12_TUNE_DF ;
 int LDO_D12_TUNE_MASK ;
 int LDO_DV12S_CFG ;
 int LDO_VCC_CFG0 ;
 int LDO_VCC_LMTVTH_2A ;
 int LDO_VCC_LMTVTH_MASK ;
 int LDO_VIO_1V7 ;
 int LDO_VIO_CFG ;
 int LDO_VIO_TUNE_MASK ;
 int OOBS_AUTOK_DIS ;
 int OOBS_CONFIG ;
 int OOBS_VAL_MASK ;
 int PCLK_CTL ;
 int PCLK_MODE_SEL ;
 int RREF_CFG ;
 int RREF_VBGSEL_1V25 ;
 int RREF_VBGSEL_MASK ;
 scalar_t__ is_version (struct rtsx_pcr*,int,int ) ;
 int rts5249_extra_init_hw (struct rtsx_pcr*) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;

__attribute__((used)) static int rts525a_extra_init_hw(struct rtsx_pcr *pcr)
{
 rts5249_extra_init_hw(pcr);

 rtsx_pci_write_register(pcr, PCLK_CTL, PCLK_MODE_SEL, PCLK_MODE_SEL);
 if (is_version(pcr, 0x525A, IC_VER_A)) {
  rtsx_pci_write_register(pcr, L1SUB_CONFIG2,
   L1SUB_AUTO_CFG, L1SUB_AUTO_CFG);
  rtsx_pci_write_register(pcr, RREF_CFG,
   RREF_VBGSEL_MASK, RREF_VBGSEL_1V25);
  rtsx_pci_write_register(pcr, LDO_VIO_CFG,
   LDO_VIO_TUNE_MASK, LDO_VIO_1V7);
  rtsx_pci_write_register(pcr, LDO_DV12S_CFG,
   LDO_D12_TUNE_MASK, LDO_D12_TUNE_DF);
  rtsx_pci_write_register(pcr, LDO_AV12S_CFG,
   LDO_AV12S_TUNE_MASK, LDO_AV12S_TUNE_DF);
  rtsx_pci_write_register(pcr, LDO_VCC_CFG0,
   LDO_VCC_LMTVTH_MASK, LDO_VCC_LMTVTH_2A);
  rtsx_pci_write_register(pcr, OOBS_CONFIG,
   OOBS_AUTOK_DIS | OOBS_VAL_MASK, 0x89);
 }

 return 0;
}
