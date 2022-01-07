
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int irq; int mem_end; void* mem_start; int pm_cap; } ;
struct qed_dev {int doorbells; int db_size; void* db_phys_addr; struct pci_dev* pdev; int regview; TYPE_1__ pci_params; } ;
struct pci_dev {int irq; int enable_cnt; } ;


 int DP_NOTICE (struct qed_dev*,char*,...) ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_PF (struct qed_dev*) ;
 int PCI_CAP_ID_PM ;
 int PCI_REVISION_ID ;
 scalar_t__ PCI_REVISION_ID_ERROR_VAL ;
 int atomic_read (int *) ;
 int ioremap_wc (void*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,scalar_t__*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 int pci_resource_end (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 int pci_resource_len (struct pci_dev*,int) ;
 void* pci_resource_start (struct pci_dev*,int) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int qed_set_coherency_mask (struct qed_dev*) ;

__attribute__((used)) static int qed_init_pci(struct qed_dev *cdev, struct pci_dev *pdev)
{
 u8 rev_id;
 int rc;

 cdev->pdev = pdev;

 rc = pci_enable_device(pdev);
 if (rc) {
  DP_NOTICE(cdev, "Cannot enable PCI device\n");
  goto err0;
 }

 if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM)) {
  DP_NOTICE(cdev, "No memory region found in bar #0\n");
  rc = -EIO;
  goto err1;
 }

 if (IS_PF(cdev) && !(pci_resource_flags(pdev, 2) & IORESOURCE_MEM)) {
  DP_NOTICE(cdev, "No memory region found in bar #2\n");
  rc = -EIO;
  goto err1;
 }

 if (atomic_read(&pdev->enable_cnt) == 1) {
  rc = pci_request_regions(pdev, "qed");
  if (rc) {
   DP_NOTICE(cdev,
      "Failed to request PCI memory resources\n");
   goto err1;
  }
  pci_set_master(pdev);
  pci_save_state(pdev);
 }

 pci_read_config_byte(pdev, PCI_REVISION_ID, &rev_id);
 if (rev_id == PCI_REVISION_ID_ERROR_VAL) {
  DP_NOTICE(cdev,
     "Detected PCI device error [rev_id 0x%x]. Probably due to prior indication. Aborting.\n",
     rev_id);
  rc = -ENODEV;
  goto err2;
 }
 if (!pci_is_pcie(pdev)) {
  DP_NOTICE(cdev, "The bus is not PCI Express\n");
  rc = -EIO;
  goto err2;
 }

 cdev->pci_params.pm_cap = pci_find_capability(pdev, PCI_CAP_ID_PM);
 if (IS_PF(cdev) && !cdev->pci_params.pm_cap)
  DP_NOTICE(cdev, "Cannot find power management capability\n");

 rc = qed_set_coherency_mask(cdev);
 if (rc)
  goto err2;

 cdev->pci_params.mem_start = pci_resource_start(pdev, 0);
 cdev->pci_params.mem_end = pci_resource_end(pdev, 0);
 cdev->pci_params.irq = pdev->irq;

 cdev->regview = pci_ioremap_bar(pdev, 0);
 if (!cdev->regview) {
  DP_NOTICE(cdev, "Cannot map register space, aborting\n");
  rc = -ENOMEM;
  goto err2;
 }

 cdev->db_phys_addr = pci_resource_start(cdev->pdev, 2);
 cdev->db_size = pci_resource_len(cdev->pdev, 2);
 if (!cdev->db_size) {
  if (IS_PF(cdev)) {
   DP_NOTICE(cdev, "No Doorbell bar available\n");
   return -EINVAL;
  } else {
   return 0;
  }
 }

 cdev->doorbells = ioremap_wc(cdev->db_phys_addr, cdev->db_size);

 if (!cdev->doorbells) {
  DP_NOTICE(cdev, "Cannot map doorbell space\n");
  return -ENOMEM;
 }

 return 0;

err2:
 pci_release_regions(pdev);
err1:
 pci_disable_device(pdev);
err0:
 return rc;
}
