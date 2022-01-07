
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_pci {scalar_t__ oper_irq_mode; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_BOOT ;
 scalar_t__ ATH10K_PCI_IRQ_LEGACY ;
 int ATH10K_PCI_TARGET_WAIT ;
 int ECOMM ;
 int EIO ;
 int ETIMEDOUT ;
 int FW_INDICATOR_ADDRESS ;
 int FW_IND_EVENT_PENDING ;
 int FW_IND_INITIALIZED ;
 int ath10k_dbg (struct ath10k*,int ,char*,...) ;
 int ath10k_err (struct ath10k*,char*,...) ;
 int ath10k_pci_disable_and_clear_legacy_irq (struct ath10k*) ;
 int ath10k_pci_enable_legacy_irq (struct ath10k*) ;
 int ath10k_pci_irq_msi_fw_mask (struct ath10k*) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_pci_read32 (struct ath10k*,int ) ;
 int ath10k_warn (struct ath10k*,char*) ;
 unsigned long jiffies ;
 int mdelay (int) ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int ath10k_pci_wait_for_target_init(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 unsigned long timeout;
 u32 val;

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot waiting target to initialise\n");

 timeout = jiffies + msecs_to_jiffies(ATH10K_PCI_TARGET_WAIT);

 do {
  val = ath10k_pci_read32(ar, FW_INDICATOR_ADDRESS);

  ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot target indicator %x\n",
      val);


  if (val == 0xffffffff)
   continue;


  if (val & FW_IND_EVENT_PENDING)
   break;

  if (val & FW_IND_INITIALIZED)
   break;

  if (ar_pci->oper_irq_mode == ATH10K_PCI_IRQ_LEGACY)

   ath10k_pci_enable_legacy_irq(ar);

  mdelay(10);
 } while (time_before(jiffies, timeout));

 ath10k_pci_disable_and_clear_legacy_irq(ar);
 ath10k_pci_irq_msi_fw_mask(ar);

 if (val == 0xffffffff) {
  ath10k_err(ar, "failed to read device register, device is gone\n");
  return -EIO;
 }

 if (val & FW_IND_EVENT_PENDING) {
  ath10k_warn(ar, "device has crashed during init\n");
  return -ECOMM;
 }

 if (!(val & FW_IND_INITIALIZED)) {
  ath10k_err(ar, "failed to receive initialized event from target: %08x\n",
      val);
  return -ETIMEDOUT;
 }

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot target initialised\n");
 return 0;
}
