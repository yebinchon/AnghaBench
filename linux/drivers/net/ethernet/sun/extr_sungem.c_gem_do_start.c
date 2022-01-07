
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int name; } ;
struct gem {TYPE_1__* pdev; } ;
struct TYPE_3__ {int irq; } ;


 int ENXIO ;
 int IRQF_SHARED ;
 int gem_clean_rings (struct gem*) ;
 int gem_get_cell (struct gem*) ;
 int gem_init_phy (struct gem*) ;
 int gem_interrupt ;
 int gem_netif_start (struct gem*) ;
 int gem_put_cell (struct gem*) ;
 int gem_reinit_chip (struct gem*) ;
 int gem_reset (struct gem*) ;
 int netdev_err (struct net_device*,char*) ;
 struct gem* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int pci_enable_device (TYPE_1__*) ;
 int pci_set_master (TYPE_1__*) ;
 int request_irq (int ,int ,int ,int ,void*) ;

__attribute__((used)) static int gem_do_start(struct net_device *dev)
{
 struct gem *gp = netdev_priv(dev);
 int rc;


 gem_get_cell(gp);


 rc = pci_enable_device(gp->pdev);
 if (rc) {
  netdev_err(dev, "Failed to enable chip on PCI bus !\n");




  gem_put_cell(gp);
  return -ENXIO;
 }
 pci_set_master(gp->pdev);


 gem_reinit_chip(gp);


 rc = request_irq(gp->pdev->irq, gem_interrupt,
    IRQF_SHARED, dev->name, (void *)dev);
 if (rc) {
  netdev_err(dev, "failed to request irq !\n");

  gem_reset(gp);
  gem_clean_rings(gp);
  gem_put_cell(gp);
  return rc;
 }




 netif_device_attach(dev);


 gem_netif_start(gp);





 gem_init_phy(gp);

 return 0;
}
