
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc92031_priv {int lock; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int PCI_D0 ;
 int _sc92031_reset (struct net_device*) ;
 struct sc92031_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int sc92031_enable_interrupts (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int sc92031_resume(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct sc92031_priv *priv = netdev_priv(dev);

 pci_restore_state(pdev);
 pci_set_power_state(pdev, PCI_D0);

 if (!netif_running(dev))
  goto out;


 spin_lock_bh(&priv->lock);

 _sc92031_reset(dev);

 spin_unlock_bh(&priv->lock);
 sc92031_enable_interrupts(dev);

 netif_device_attach(dev);

 if (netif_carrier_ok(dev))
  netif_wake_queue(dev);
 else
  netif_tx_disable(dev);

out:
 return 0;
}
