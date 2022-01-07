
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_nic {int port_num; scalar_t__ irq_type; int regs; TYPE_1__** priv; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* ndev; } ;


 scalar_t__ IRQ_MSI ;
 int RET () ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct pci_nic* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;
 int vfree (struct pci_nic*) ;

__attribute__((used)) static void bdx_remove(struct pci_dev *pdev)
{
 struct pci_nic *nic = pci_get_drvdata(pdev);
 struct net_device *ndev;
 int port;

 for (port = 0; port < nic->port_num; port++) {
  ndev = nic->priv[port]->ndev;
  unregister_netdev(ndev);
  free_netdev(ndev);
 }







 iounmap(nic->regs);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 vfree(nic);

 RET();
}
