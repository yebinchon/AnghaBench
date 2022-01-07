
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pciedev_info {int dummy; } ;


 int BRCMF_PCIE_PCIE2REG_MAILBOXMASK ;
 int brcmf_pcie_write_reg32 (struct brcmf_pciedev_info*,int ,int ) ;

__attribute__((used)) static void brcmf_pcie_intr_disable(struct brcmf_pciedev_info *devinfo)
{
 brcmf_pcie_write_reg32(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXMASK, 0);
}
