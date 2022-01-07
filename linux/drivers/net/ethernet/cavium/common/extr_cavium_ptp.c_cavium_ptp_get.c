
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cavium_ptp {int dummy; } ;


 int ENODEV ;
 int EPROBE_DEFER ;
 struct cavium_ptp* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct cavium_ptp*) ;
 int PCI_DEVICE_ID_CAVIUM_PTP ;
 int PCI_VENDOR_ID_CAVIUM ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;
 struct cavium_ptp* pci_get_drvdata (struct pci_dev*) ;

struct cavium_ptp *cavium_ptp_get(void)
{
 struct cavium_ptp *ptp;
 struct pci_dev *pdev;

 pdev = pci_get_device(PCI_VENDOR_ID_CAVIUM,
         PCI_DEVICE_ID_CAVIUM_PTP, ((void*)0));
 if (!pdev)
  return ERR_PTR(-ENODEV);

 ptp = pci_get_drvdata(pdev);
 if (!ptp)
  ptp = ERR_PTR(-EPROBE_DEFER);
 if (IS_ERR(ptp))
  pci_dev_put(pdev);

 return ptp;
}
