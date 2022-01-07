
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct brcmf_pciedev_info {TYPE_1__ shared; } ;


 int BRCMF_PCIE_PCIE2REG_H2D_MAILBOX_1 ;
 int BRCMF_PCIE_SHARED_HOSTRDY_DB1 ;
 int brcmf_pcie_write_reg32 (struct brcmf_pciedev_info*,int ,int) ;

__attribute__((used)) static void brcmf_pcie_hostready(struct brcmf_pciedev_info *devinfo)
{
 if (devinfo->shared.flags & BRCMF_PCIE_SHARED_HOSTRDY_DB1)
  brcmf_pcie_write_reg32(devinfo,
           BRCMF_PCIE_PCIE2REG_H2D_MAILBOX_1, 1);
}
