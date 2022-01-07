
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
struct dw_mci {int regs; int * pdata; int * dev; int irq_flags; int irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int PCI_BAR_NO ;
 struct dw_mci* devm_kzalloc (int *,int,int ) ;
 int dw_mci_probe (struct dw_mci*) ;
 int pci_board_data ;
 int pci_name (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct dw_mci*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int,int ) ;
 int * pcim_iomap_table (struct pci_dev*) ;

__attribute__((used)) static int dw_mci_pci_probe(struct pci_dev *pdev,
       const struct pci_device_id *entries)
{
 struct dw_mci *host;
 int ret;

 ret = pcim_enable_device(pdev);
 if (ret)
  return ret;

 host = devm_kzalloc(&pdev->dev, sizeof(struct dw_mci), GFP_KERNEL);
 if (!host)
  return -ENOMEM;

 host->irq = pdev->irq;
 host->irq_flags = IRQF_SHARED;
 host->dev = &pdev->dev;
 host->pdata = &pci_board_data;

 ret = pcim_iomap_regions(pdev, 1 << PCI_BAR_NO, pci_name(pdev));
 if (ret)
  return ret;

 host->regs = pcim_iomap_table(pdev)[PCI_BAR_NO];

 pci_set_master(pdev);

 ret = dw_mci_probe(host);
 if (ret)
  return ret;

 pci_set_drvdata(pdev, host);

 return 0;
}
