
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct plx_pci_card {scalar_t__ conf_addr; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ PLX9056_CNTRL ;
 int PLX9056_PCI_RCR ;
 int PLX_PCI_RESET ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int mdelay (int) ;
 struct plx_pci_card* pci_get_drvdata (struct pci_dev*) ;
 int udelay (int) ;

__attribute__((used)) static void plx9056_pci_reset_common(struct pci_dev *pdev)
{
 struct plx_pci_card *card = pci_get_drvdata(pdev);
 u32 cntrl;


 cntrl = ioread32(card->conf_addr + PLX9056_CNTRL);
 cntrl |= PLX_PCI_RESET;
 iowrite32(cntrl, card->conf_addr + PLX9056_CNTRL);
 udelay(100);
 cntrl ^= PLX_PCI_RESET;
 iowrite32(cntrl, card->conf_addr + PLX9056_CNTRL);


 cntrl |= PLX9056_PCI_RCR;
 iowrite32(cntrl, card->conf_addr + PLX9056_CNTRL);






 mdelay(10);

 cntrl ^= PLX9056_PCI_RCR;
 iowrite32(cntrl, card->conf_addr + PLX9056_CNTRL);
}
