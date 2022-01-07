
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_service_card {scalar_t__ msix_enable; scalar_t__ msi_enable; } ;
struct mwifiex_adapter {int int_status; scalar_t__ ps_state; int pm_wakeup_fw_try; int int_lock; int wakeup_timer; int pps_uapsd_mode; struct pcie_service_card* card; } ;


 int BIT (int) ;
 int ERROR ;
 int INTR ;
 int PCIE_HOST_INT_STATUS ;
 scalar_t__ PS_STATE_AWAKE ;
 scalar_t__ PS_STATE_SLEEP ;
 int del_timer (int *) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_pcie_disable_host_int (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_pcie_ok_to_access_hw (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_read_reg (struct mwifiex_adapter*,int ,int*) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mwifiex_interrupt_status(struct mwifiex_adapter *adapter,
         int msg_id)
{
 u32 pcie_ireg;
 unsigned long flags;
 struct pcie_service_card *card = adapter->card;

 if (card->msi_enable) {
  spin_lock_irqsave(&adapter->int_lock, flags);
  adapter->int_status = 1;
  spin_unlock_irqrestore(&adapter->int_lock, flags);
  return;
 }

 if (!mwifiex_pcie_ok_to_access_hw(adapter))
  return;

 if (card->msix_enable && msg_id >= 0) {
  pcie_ireg = BIT(msg_id);
 } else {
  if (mwifiex_read_reg(adapter, PCIE_HOST_INT_STATUS,
         &pcie_ireg)) {
   mwifiex_dbg(adapter, ERROR, "Read register failed\n");
   return;
  }

  if ((pcie_ireg == 0xFFFFFFFF) || !pcie_ireg)
   return;


  mwifiex_pcie_disable_host_int(adapter);


  if (mwifiex_write_reg(adapter, PCIE_HOST_INT_STATUS,
          ~pcie_ireg)) {
   mwifiex_dbg(adapter, ERROR,
        "Write register failed\n");
   return;
  }
 }

 if (!adapter->pps_uapsd_mode &&
     adapter->ps_state == PS_STATE_SLEEP &&
     mwifiex_pcie_ok_to_access_hw(adapter)) {




  adapter->ps_state = PS_STATE_AWAKE;
  adapter->pm_wakeup_fw_try = 0;
  del_timer(&adapter->wakeup_timer);
 }

 spin_lock_irqsave(&adapter->int_lock, flags);
 adapter->int_status |= pcie_ireg;
 spin_unlock_irqrestore(&adapter->int_lock, flags);
 mwifiex_dbg(adapter, INTR, "ireg: 0x%08x\n", pcie_ireg);
}
