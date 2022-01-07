
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc92031_priv {int lock; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef int pm_message_t ;


 int _sc92031_disable_tx_rx (struct net_device*) ;
 int _sc92031_tx_clear (struct net_device*) ;
 struct sc92031_priv* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int pci_choose_state (struct pci_dev*,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int sc92031_disable_interrupts (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int sc92031_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct sc92031_priv *priv = netdev_priv(dev);

 pci_save_state(pdev);

 if (!netif_running(dev))
  goto out;

 netif_device_detach(dev);


 sc92031_disable_interrupts(dev);

 spin_lock_bh(&priv->lock);

 _sc92031_disable_tx_rx(dev);
 _sc92031_tx_clear(dev);

 spin_unlock_bh(&priv->lock);

out:
 pci_set_power_state(pdev, pci_choose_state(pdev, state));

 return 0;
}
