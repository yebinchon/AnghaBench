
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int cleanup_dev (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void hp100_pci_remove(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);

 cleanup_dev(dev);
 pci_disable_device(pdev);
}
