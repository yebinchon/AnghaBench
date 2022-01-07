
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int flags; int pdev; } ;


 int BNX2X_DEV_INFO (char*) ;
 int USING_MSI_FLAG ;
 int pci_enable_msi (int ) ;

int bnx2x_enable_msi(struct bnx2x *bp)
{
 int rc;

 rc = pci_enable_msi(bp->pdev);
 if (rc) {
  BNX2X_DEV_INFO("MSI is not attainable\n");
  return -1;
 }
 bp->flags |= USING_MSI_FLAG;

 return 0;
}
