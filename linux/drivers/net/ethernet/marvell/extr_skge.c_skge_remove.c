
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_hw {int ports; int regs; int hw_lock; scalar_t__ intr_mask; int phy_task; struct net_device** dev; } ;
struct pci_dev {int irq; } ;
struct net_device {int dummy; } ;


 int B0_CTST ;
 int B0_IMSK ;
 int B0_LED ;
 int CS_RST_SET ;
 int LED_STAT_OFF ;
 int free_irq (int ,struct skge_hw*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 int kfree (struct skge_hw*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct skge_hw* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int skge_read32 (struct skge_hw*,int ) ;
 int skge_write16 (struct skge_hw*,int ,int ) ;
 int skge_write32 (struct skge_hw*,int ,int ) ;
 int skge_write8 (struct skge_hw*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklet_kill (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void skge_remove(struct pci_dev *pdev)
{
 struct skge_hw *hw = pci_get_drvdata(pdev);
 struct net_device *dev0, *dev1;

 if (!hw)
  return;

 dev1 = hw->dev[1];
 if (dev1)
  unregister_netdev(dev1);
 dev0 = hw->dev[0];
 unregister_netdev(dev0);

 tasklet_kill(&hw->phy_task);

 spin_lock_irq(&hw->hw_lock);
 hw->intr_mask = 0;

 if (hw->ports > 1) {
  skge_write32(hw, B0_IMSK, 0);
  skge_read32(hw, B0_IMSK);
 }
 spin_unlock_irq(&hw->hw_lock);

 skge_write16(hw, B0_LED, LED_STAT_OFF);
 skge_write8(hw, B0_CTST, CS_RST_SET);

 if (hw->ports > 1)
  free_irq(pdev->irq, hw);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 if (dev1)
  free_netdev(dev1);
 free_netdev(dev0);

 iounmap(hw->regs);
 kfree(hw);
}
