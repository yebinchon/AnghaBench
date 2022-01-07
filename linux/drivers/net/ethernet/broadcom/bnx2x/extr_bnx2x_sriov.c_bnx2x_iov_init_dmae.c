
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int pdev; } ;


 int DMAE_REG_BACKWARD_COMP_EN ;
 int PCI_EXT_CAP_ID_SRIOV ;
 int REG_WR (struct bnx2x*,int ,int ) ;
 scalar_t__ pci_find_ext_capability (int ,int ) ;

void bnx2x_iov_init_dmae(struct bnx2x *bp)
{
 if (pci_find_ext_capability(bp->pdev, PCI_EXT_CAP_ID_SRIOV))
  REG_WR(bp, DMAE_REG_BACKWARD_COMP_EN, 0);
}
