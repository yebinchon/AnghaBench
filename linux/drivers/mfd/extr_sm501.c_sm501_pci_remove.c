
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_devdata {int regs_claim; int regs; } ;
struct pci_dev {int dummy; } ;


 int iounmap (int ) ;
 int kfree (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct sm501_devdata* pci_get_drvdata (struct pci_dev*) ;
 int release_resource (int ) ;
 int sm501_dev_remove (struct sm501_devdata*) ;

__attribute__((used)) static void sm501_pci_remove(struct pci_dev *dev)
{
 struct sm501_devdata *sm = pci_get_drvdata(dev);

 sm501_dev_remove(sm);
 iounmap(sm->regs);

 release_resource(sm->regs_claim);
 kfree(sm->regs_claim);

 pci_disable_device(dev);
}
