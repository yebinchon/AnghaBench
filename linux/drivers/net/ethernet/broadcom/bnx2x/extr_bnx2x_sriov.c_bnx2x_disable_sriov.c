
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int pdev; } ;


 int BNX2X_MSG_IOV ;
 int DP (int ,char*) ;
 int pci_disable_sriov (int ) ;
 scalar_t__ pci_vfs_assigned (int ) ;

void bnx2x_disable_sriov(struct bnx2x *bp)
{
 if (pci_vfs_assigned(bp->pdev)) {
  DP(BNX2X_MSG_IOV,
     "Unloading driver while VFs are assigned - VFs will not be deallocated\n");
  return;
 }

 pci_disable_sriov(bp->pdev);
}
