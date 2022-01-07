
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct pci_dev {int dummy; } ;
struct net_device {int base_addr; } ;
struct de4x5_private {scalar_t__ chipset; scalar_t__ bus; int gendev; } ;


 scalar_t__ DC21040 ;
 scalar_t__ DC21140 ;
 int DE4X5_SICR ;
 scalar_t__ EISA ;
 int PCI_CFDA_PSM ;
 int PCI_CFPM ;



 int mdelay (int) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int outb (int const,int ) ;
 int outl (int ,int ) ;
 int pci_write_config_byte (struct pci_dev*,int ,int const) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void
yawn(struct net_device *dev, int state)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;

    if ((lp->chipset == DC21040) || (lp->chipset == DC21140)) return;

    if(lp->bus == EISA) {
 switch(state) {
   case 128:
     outb(128, PCI_CFPM);
     mdelay(10);
     break;

   case 129:
     outb(129, PCI_CFPM);
     break;

   case 130:
     outl(0, DE4X5_SICR);
     outb(130, PCI_CFPM);
     break;
 }
    } else {
 struct pci_dev *pdev = to_pci_dev (lp->gendev);
 switch(state) {
   case 128:
     pci_write_config_byte(pdev, PCI_CFDA_PSM, 128);
     mdelay(10);
     break;

   case 129:
     pci_write_config_byte(pdev, PCI_CFDA_PSM, 129);
     break;

   case 130:
     outl(0, DE4X5_SICR);
     pci_write_config_byte(pdev, PCI_CFDA_PSM, 130);
     break;
 }
    }
}
