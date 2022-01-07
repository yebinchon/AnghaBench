
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct cas {int reset_task; int reset_task_pending; int reset_task_pending_all; int * stat_lock; TYPE_1__* net_stats; int dev; } ;
struct TYPE_2__ {int rx_errors; } ;


 int CAS_RESET_ALL ;
 int INTR_MAC_CTRL_STATUS ;
 int INTR_MIF_STATUS ;
 int INTR_PCI_ERROR_STATUS ;
 int INTR_PCS_STATUS ;
 int INTR_RX_LEN_MISMATCH ;
 int INTR_RX_MAC_STATUS ;
 int INTR_RX_TAG_ERROR ;
 int INTR_TX_MAC_STATUS ;
 int KERN_DEBUG ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ cas_mac_interrupt (struct net_device*,struct cas*,int) ;
 scalar_t__ cas_mif_interrupt (struct net_device*,struct cas*,int) ;
 scalar_t__ cas_pci_interrupt (struct net_device*,struct cas*,int) ;
 scalar_t__ cas_pcs_interrupt (struct net_device*,struct cas*,int) ;
 scalar_t__ cas_rxmac_interrupt (struct net_device*,struct cas*,int) ;
 scalar_t__ cas_txmac_interrupt (struct net_device*,struct cas*,int) ;
 int netdev_err (struct net_device*,char*,...) ;
 int netif_printk (struct cas*,int ,int ,int ,char*) ;
 int rx_err ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cas_abnormal_irq(struct net_device *dev, struct cas *cp,
       u32 status)
{
 if (status & INTR_RX_TAG_ERROR) {

  netif_printk(cp, rx_err, KERN_DEBUG, cp->dev,
        "corrupt rx tag framing\n");
  spin_lock(&cp->stat_lock[0]);
  cp->net_stats[0].rx_errors++;
  spin_unlock(&cp->stat_lock[0]);
  goto do_reset;
 }

 if (status & INTR_RX_LEN_MISMATCH) {

  netif_printk(cp, rx_err, KERN_DEBUG, cp->dev,
        "length mismatch for rx frame\n");
  spin_lock(&cp->stat_lock[0]);
  cp->net_stats[0].rx_errors++;
  spin_unlock(&cp->stat_lock[0]);
  goto do_reset;
 }

 if (status & INTR_PCS_STATUS) {
  if (cas_pcs_interrupt(dev, cp, status))
   goto do_reset;
 }

 if (status & INTR_TX_MAC_STATUS) {
  if (cas_txmac_interrupt(dev, cp, status))
   goto do_reset;
 }

 if (status & INTR_RX_MAC_STATUS) {
  if (cas_rxmac_interrupt(dev, cp, status))
   goto do_reset;
 }

 if (status & INTR_MAC_CTRL_STATUS) {
  if (cas_mac_interrupt(dev, cp, status))
   goto do_reset;
 }

 if (status & INTR_MIF_STATUS) {
  if (cas_mif_interrupt(dev, cp, status))
   goto do_reset;
 }

 if (status & INTR_PCI_ERROR_STATUS) {
  if (cas_pci_interrupt(dev, cp, status))
   goto do_reset;
 }
 return 0;

do_reset:

 atomic_inc(&cp->reset_task_pending);
 atomic_inc(&cp->reset_task_pending_all);
 netdev_err(dev, "reset called in cas_abnormal_irq [0x%x]\n", status);
 schedule_work(&cp->reset_task);





 return 1;
}
