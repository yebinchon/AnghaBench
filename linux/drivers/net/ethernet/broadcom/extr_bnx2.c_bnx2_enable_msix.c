
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {char* name; } ;
struct msix_entry {int entry; scalar_t__ vector; } ;
struct bnx2 {int irq_nvecs; int flags; TYPE_1__* irq_tbl; int pdev; struct net_device* dev; } ;
struct TYPE_2__ {int handler; int name; scalar_t__ vector; } ;


 int BNX2_FLAG_ONE_SHOT_MSI ;
 int BNX2_FLAG_USING_MSIX ;
 scalar_t__ BNX2_MAX_MSIX_HW_VEC ;
 int BNX2_MAX_MSIX_VEC ;
 int BNX2_MIN_MSIX_VEC ;
 scalar_t__ BNX2_PCI_GRC_WINDOW2_BASE ;
 scalar_t__ BNX2_PCI_GRC_WINDOW3_BASE ;
 int BNX2_PCI_MSIX_CONTROL ;
 int BNX2_PCI_MSIX_PBA_OFF_BIT ;
 int BNX2_PCI_MSIX_TBL_OFF_BIR ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,scalar_t__) ;
 int bnx2_msi_1shot ;
 int bnx2_setup_msix_tbl (struct bnx2*) ;
 int pci_enable_msix_range (int ,struct msix_entry*,int ,int) ;
 int snprintf (int ,int const,char*,char*,int) ;

__attribute__((used)) static void
bnx2_enable_msix(struct bnx2 *bp, int msix_vecs)
{
 int i, total_vecs;
 struct msix_entry msix_ent[BNX2_MAX_MSIX_VEC];
 struct net_device *dev = bp->dev;
 const int len = sizeof(bp->irq_tbl[0].name);

 bnx2_setup_msix_tbl(bp);
 BNX2_WR(bp, BNX2_PCI_MSIX_CONTROL, BNX2_MAX_MSIX_HW_VEC - 1);
 BNX2_WR(bp, BNX2_PCI_MSIX_TBL_OFF_BIR, BNX2_PCI_GRC_WINDOW2_BASE);
 BNX2_WR(bp, BNX2_PCI_MSIX_PBA_OFF_BIT, BNX2_PCI_GRC_WINDOW3_BASE);



 BNX2_RD(bp, BNX2_PCI_MSIX_CONTROL);

 for (i = 0; i < BNX2_MAX_MSIX_VEC; i++) {
  msix_ent[i].entry = i;
  msix_ent[i].vector = 0;
 }

 total_vecs = msix_vecs;



 total_vecs = pci_enable_msix_range(bp->pdev, msix_ent,
        BNX2_MIN_MSIX_VEC, total_vecs);
 if (total_vecs < 0)
  return;

 msix_vecs = total_vecs;



 bp->irq_nvecs = msix_vecs;
 bp->flags |= BNX2_FLAG_USING_MSIX | BNX2_FLAG_ONE_SHOT_MSI;
 for (i = 0; i < total_vecs; i++) {
  bp->irq_tbl[i].vector = msix_ent[i].vector;
  snprintf(bp->irq_tbl[i].name, len, "%s-%d", dev->name, i);
  bp->irq_tbl[i].handler = bnx2_msi_1shot;
 }
}
