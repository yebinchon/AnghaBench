
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int kobj; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct TYPE_8__ {scalar_t__ bd; } ;
struct TYPE_5__ {int firmware_loading_complete; } ;
struct il_priv {int hw; int beacon_skb; int hw_base; TYPE_3__* pci_dev; int * workqueue; TYPE_4__ rxq; int lock; scalar_t__ mac80211_registered; int status; TYPE_1__ _4965; } ;
struct TYPE_7__ {int irq; } ;


 int D_INFO (char*) ;
 int S_EXIT_PENDING ;
 int destroy_workqueue (int *) ;
 int dev_kfree_skb (int ) ;
 int flush_workqueue (int *) ;
 int free_irq (int ,struct il_priv*) ;
 int ieee80211_free_hw (int ) ;
 int ieee80211_unregister_hw (int ) ;
 int il4965_dealloc_ucode_pci (struct il_priv*) ;
 int il4965_down (struct il_priv*) ;
 int il4965_hw_txq_ctx_free (struct il_priv*) ;
 int il4965_rx_queue_free (struct il_priv*,TYPE_4__*) ;
 int il4965_synchronize_irq (struct il_priv*) ;
 int il4965_uninit_drv (struct il_priv*) ;
 int il_apm_stop (struct il_priv*) ;
 int il_attribute_group ;
 int il_dbgfs_unregister (struct il_priv*) ;
 int il_disable_interrupts (struct il_priv*) ;
 int il_eeprom_free (struct il_priv*) ;
 int il_leds_exit (struct il_priv*) ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (TYPE_3__*) ;
 struct il_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sysfs_remove_group (int *,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void
il4965_pci_remove(struct pci_dev *pdev)
{
 struct il_priv *il = pci_get_drvdata(pdev);
 unsigned long flags;

 if (!il)
  return;

 wait_for_completion(&il->_4965.firmware_loading_complete);

 D_INFO("*** UNLOAD DRIVER ***\n");

 il_dbgfs_unregister(il);
 sysfs_remove_group(&pdev->dev.kobj, &il_attribute_group);





 set_bit(S_EXIT_PENDING, &il->status);

 il_leds_exit(il);

 if (il->mac80211_registered) {
  ieee80211_unregister_hw(il->hw);
  il->mac80211_registered = 0;
 } else {
  il4965_down(il);
 }
 il_apm_stop(il);




 spin_lock_irqsave(&il->lock, flags);
 il_disable_interrupts(il);
 spin_unlock_irqrestore(&il->lock, flags);

 il4965_synchronize_irq(il);

 il4965_dealloc_ucode_pci(il);

 if (il->rxq.bd)
  il4965_rx_queue_free(il, &il->rxq);
 il4965_hw_txq_ctx_free(il);

 il_eeprom_free(il);


 flush_workqueue(il->workqueue);




 destroy_workqueue(il->workqueue);
 il->workqueue = ((void*)0);

 free_irq(il->pci_dev->irq, il);
 pci_disable_msi(il->pci_dev);
 iounmap(il->hw_base);
 pci_release_regions(pdev);
 pci_disable_device(pdev);

 il4965_uninit_drv(il);

 dev_kfree_skb(il->beacon_skb);

 ieee80211_free_hw(il->hw);
}
