
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 int NETIF_MSG_PROBE ;
 int PCNET32_DMA_MASK ;
 int PCNET32_TOTAL_SIZE ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 unsigned long pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int pcnet32_debug ;
 int pcnet32_probe1 (unsigned long,int,struct pci_dev*) ;
 int pr_err (char*,...) ;
 int request_region (unsigned long,int ,char*) ;

__attribute__((used)) static int
pcnet32_probe_pci(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 unsigned long ioaddr;
 int err;

 err = pci_enable_device(pdev);
 if (err < 0) {
  if (pcnet32_debug & NETIF_MSG_PROBE)
   pr_err("failed to enable device -- err=%d\n", err);
  return err;
 }
 pci_set_master(pdev);

 ioaddr = pci_resource_start(pdev, 0);
 if (!ioaddr) {
  if (pcnet32_debug & NETIF_MSG_PROBE)
   pr_err("card has no PCI IO resources, aborting\n");
  err = -ENODEV;
  goto err_disable_dev;
 }

 err = pci_set_dma_mask(pdev, PCNET32_DMA_MASK);
 if (err) {
  if (pcnet32_debug & NETIF_MSG_PROBE)
   pr_err("architecture does not support 32bit PCI busmaster DMA\n");
  goto err_disable_dev;
 }
 if (!request_region(ioaddr, PCNET32_TOTAL_SIZE, "pcnet32_probe_pci")) {
  if (pcnet32_debug & NETIF_MSG_PROBE)
   pr_err("io address range already allocated\n");
  err = -EBUSY;
  goto err_disable_dev;
 }

 err = pcnet32_probe1(ioaddr, 1, pdev);

err_disable_dev:
 if (err < 0)
  pci_disable_device(pdev);

 return err;
}
