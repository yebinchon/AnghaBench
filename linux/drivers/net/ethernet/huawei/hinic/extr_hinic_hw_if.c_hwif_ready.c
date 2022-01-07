
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;


 int EFAULT ;
 int HINIC_CSR_FUNC_ATTR1_ADDR ;
 int HINIC_FA1_GET (int ,int ) ;
 int INIT_STATUS ;
 int dev_err (int *,char*) ;
 int hinic_hwif_read_reg (struct hinic_hwif*,int ) ;

__attribute__((used)) static int hwif_ready(struct hinic_hwif *hwif)
{
 struct pci_dev *pdev = hwif->pdev;
 u32 addr, attr1;

 addr = HINIC_CSR_FUNC_ATTR1_ADDR;
 attr1 = hinic_hwif_read_reg(hwif, addr);

 if (!HINIC_FA1_GET(attr1, INIT_STATUS)) {
  dev_err(&pdev->dev, "hwif status is not ready\n");
  return -EFAULT;
 }

 return 0;
}
