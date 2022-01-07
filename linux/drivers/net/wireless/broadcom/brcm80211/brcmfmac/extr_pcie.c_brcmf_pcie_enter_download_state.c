
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_pciedev_info {TYPE_1__* ci; } ;
struct TYPE_2__ {scalar_t__ chip; } ;


 int BCMA_CORE_ARM_CR4 ;
 int BRCMF_PCIE_ARMCR4REG_BANKIDX ;
 int BRCMF_PCIE_ARMCR4REG_BANKPDA ;
 scalar_t__ BRCM_CC_43602_CHIP_ID ;
 int brcmf_pcie_select_core (struct brcmf_pciedev_info*,int ) ;
 int brcmf_pcie_write_reg32 (struct brcmf_pciedev_info*,int ,int) ;

__attribute__((used)) static int brcmf_pcie_enter_download_state(struct brcmf_pciedev_info *devinfo)
{
 if (devinfo->ci->chip == BRCM_CC_43602_CHIP_ID) {
  brcmf_pcie_select_core(devinfo, BCMA_CORE_ARM_CR4);
  brcmf_pcie_write_reg32(devinfo, BRCMF_PCIE_ARMCR4REG_BANKIDX,
           5);
  brcmf_pcie_write_reg32(devinfo, BRCMF_PCIE_ARMCR4REG_BANKPDA,
           0);
  brcmf_pcie_write_reg32(devinfo, BRCMF_PCIE_ARMCR4REG_BANKIDX,
           7);
  brcmf_pcie_write_reg32(devinfo, BRCMF_PCIE_ARMCR4REG_BANKPDA,
           0);
 }
 return 0;
}
