
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hl_device {scalar_t__* pcie_bar; int dev; struct pci_dev* pdev; } ;


 int ENODEV ;
 int HL_NAME ;
 int dev_err (int ,char*,...) ;
 int iounmap (scalar_t__) ;
 scalar_t__ pci_ioremap_bar (struct pci_dev*,int) ;
 scalar_t__ pci_ioremap_wc_bar (struct pci_dev*,int) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;

int hl_pci_bars_map(struct hl_device *hdev, const char * const name[3],
   bool is_wc[3])
{
 struct pci_dev *pdev = hdev->pdev;
 int rc, i, bar;

 rc = pci_request_regions(pdev, HL_NAME);
 if (rc) {
  dev_err(hdev->dev, "Cannot obtain PCI resources\n");
  return rc;
 }

 for (i = 0 ; i < 3 ; i++) {
  bar = i * 2;
  hdev->pcie_bar[bar] = is_wc[i] ?
    pci_ioremap_wc_bar(pdev, bar) :
    pci_ioremap_bar(pdev, bar);
  if (!hdev->pcie_bar[bar]) {
   dev_err(hdev->dev, "pci_ioremap%s_bar failed for %s\n",
     is_wc[i] ? "_wc" : "", name[i]);
   rc = -ENODEV;
   goto err;
  }
 }

 return 0;

err:
 for (i = 2 ; i >= 0 ; i--) {
  bar = i * 2;
  if (hdev->pcie_bar[bar])
   iounmap(hdev->pcie_bar[bar]);
 }

 pci_release_regions(pdev);

 return rc;
}
