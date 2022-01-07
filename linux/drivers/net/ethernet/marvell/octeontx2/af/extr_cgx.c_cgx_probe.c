
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct cgx {int cgx_id; int cgx_list; int cgx_cmd_workq; int cgx_cmd_work; int reg_base; struct pci_dev* pdev; } ;


 int CGX_ID_MASK ;
 int CGX_NVEC ;
 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int PCI_CFG_REG_BAR_NUM ;
 int PCI_IRQ_MSIX ;
 int alloc_workqueue (char*,int ,int ) ;
 int cgx_link_usertable_init () ;
 int cgx_list ;
 int cgx_lmac_exit (struct cgx*) ;
 int cgx_lmac_init (struct cgx*) ;
 int cgx_lmac_linkup_work ;
 int dev_err (struct device*,char*,...) ;
 struct cgx* devm_kzalloc (struct device*,int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct cgx*) ;
 int pcim_iomap (struct pci_dev*,int ,int ) ;

__attribute__((used)) static int cgx_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct device *dev = &pdev->dev;
 struct cgx *cgx;
 int err, nvec;

 cgx = devm_kzalloc(dev, sizeof(*cgx), GFP_KERNEL);
 if (!cgx)
  return -ENOMEM;
 cgx->pdev = pdev;

 pci_set_drvdata(pdev, cgx);

 err = pci_enable_device(pdev);
 if (err) {
  dev_err(dev, "Failed to enable PCI device\n");
  pci_set_drvdata(pdev, ((void*)0));
  return err;
 }

 err = pci_request_regions(pdev, DRV_NAME);
 if (err) {
  dev_err(dev, "PCI request regions failed 0x%x\n", err);
  goto err_disable_device;
 }


 cgx->reg_base = pcim_iomap(pdev, PCI_CFG_REG_BAR_NUM, 0);
 if (!cgx->reg_base) {
  dev_err(dev, "CGX: Cannot map CSR memory space, aborting\n");
  err = -ENOMEM;
  goto err_release_regions;
 }

 nvec = CGX_NVEC;
 err = pci_alloc_irq_vectors(pdev, nvec, nvec, PCI_IRQ_MSIX);
 if (err < 0 || err != nvec) {
  dev_err(dev, "Request for %d msix vectors failed, err %d\n",
   nvec, err);
  goto err_release_regions;
 }

 cgx->cgx_id = (pci_resource_start(pdev, PCI_CFG_REG_BAR_NUM) >> 24)
  & CGX_ID_MASK;


 INIT_WORK(&cgx->cgx_cmd_work, cgx_lmac_linkup_work);
 cgx->cgx_cmd_workq = alloc_workqueue("cgx_cmd_workq", 0, 0);
 if (!cgx->cgx_cmd_workq) {
  dev_err(dev, "alloc workqueue failed for cgx cmd");
  err = -ENOMEM;
  goto err_free_irq_vectors;
 }

 list_add(&cgx->cgx_list, &cgx_list);

 cgx_link_usertable_init();

 err = cgx_lmac_init(cgx);
 if (err)
  goto err_release_lmac;

 return 0;

err_release_lmac:
 cgx_lmac_exit(cgx);
 list_del(&cgx->cgx_list);
err_free_irq_vectors:
 pci_free_irq_vectors(pdev);
err_release_regions:
 pci_release_regions(pdev);
err_disable_device:
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
 return err;
}
