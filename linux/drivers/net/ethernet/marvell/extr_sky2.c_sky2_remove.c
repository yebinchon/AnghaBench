
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_status_le {int dummy; } ;
struct sky2_hw {int ports; int flags; int st_size; int regs; int * dev; int st_dma; int st_le; int napi; int restart_work; int watchdog_timer; } ;
struct pci_dev {int irq; } ;


 int B0_CTST ;
 int B0_IMSK ;
 int CS_RST_SET ;
 int SKY2_HW_USE_MSI ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct sky2_hw*) ;
 int free_netdev (int ) ;
 int iounmap (int ) ;
 int kfree (struct sky2_hw*) ;
 int napi_disable (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int,int ,int ) ;
 struct sky2_hw* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int sky2_power_aux (struct sky2_hw*) ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_read8 (struct sky2_hw*,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void sky2_remove(struct pci_dev *pdev)
{
 struct sky2_hw *hw = pci_get_drvdata(pdev);
 int i;

 if (!hw)
  return;

 del_timer_sync(&hw->watchdog_timer);
 cancel_work_sync(&hw->restart_work);

 for (i = hw->ports-1; i >= 0; --i)
  unregister_netdev(hw->dev[i]);

 sky2_write32(hw, B0_IMSK, 0);
 sky2_read32(hw, B0_IMSK);

 sky2_power_aux(hw);

 sky2_write8(hw, B0_CTST, CS_RST_SET);
 sky2_read8(hw, B0_CTST);

 if (hw->ports > 1) {
  napi_disable(&hw->napi);
  free_irq(pdev->irq, hw);
 }

 if (hw->flags & SKY2_HW_USE_MSI)
  pci_disable_msi(pdev);
 pci_free_consistent(pdev, hw->st_size * sizeof(struct sky2_status_le),
       hw->st_le, hw->st_dma);
 pci_release_regions(pdev);
 pci_disable_device(pdev);

 for (i = hw->ports-1; i >= 0; --i)
  free_netdev(hw->dev[i]);

 iounmap(hw->regs);
 kfree(hw);
}
