
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subsystem_device; int dev; } ;
struct ilo_hwinfo {int * mmio_vaddr; int * ram_vaddr; int * db_vaddr; } ;


 int ENOMEM ;
 int ILOHW_CCB_SZ ;
 int ONE_DB_SIZE ;
 int dev_err (int *,char*) ;
 int max_ccb ;
 void* pci_iomap (struct pci_dev*,int,int) ;
 int * pci_iomap_range (struct pci_dev*,int,unsigned long,int) ;
 int pci_iounmap (struct pci_dev*,int *) ;
 int pci_resource_len (struct pci_dev*,int) ;

__attribute__((used)) static int ilo_map_device(struct pci_dev *pdev, struct ilo_hwinfo *hw)
{
 int bar;
 unsigned long off;


 hw->mmio_vaddr = pci_iomap(pdev, 1, 0);
 if (hw->mmio_vaddr == ((void*)0)) {
  dev_err(&pdev->dev, "Error mapping mmio\n");
  goto out;
 }


 if (pdev->subsystem_device == 0x00E4) {
  bar = 5;

  off = pci_resource_len(pdev, bar) - 0x2000;
 } else {
  bar = 2;
  off = 0;
 }
 hw->ram_vaddr = pci_iomap_range(pdev, bar, off, max_ccb * ILOHW_CCB_SZ);
 if (hw->ram_vaddr == ((void*)0)) {
  dev_err(&pdev->dev, "Error mapping shared mem\n");
  goto mmio_free;
 }


 hw->db_vaddr = pci_iomap(pdev, 3, max_ccb * ONE_DB_SIZE);
 if (hw->db_vaddr == ((void*)0)) {
  dev_err(&pdev->dev, "Error mapping doorbell\n");
  goto ram_free;
 }

 return 0;
ram_free:
 pci_iounmap(pdev, hw->ram_vaddr);
mmio_free:
 pci_iounmap(pdev, hw->mmio_vaddr);
out:
 return -ENOMEM;
}
