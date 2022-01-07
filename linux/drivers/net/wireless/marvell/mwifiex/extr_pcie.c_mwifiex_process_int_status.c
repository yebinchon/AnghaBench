
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_service_card {int msix_enable; scalar_t__ msi_enable; } ;
struct mwifiex_adapter {int int_status; scalar_t__ ps_state; int pm_wakeup_fw_try; int cmd_sent; int data_sent; int wakeup_timer; int pps_uapsd_mode; int int_lock; struct pcie_service_card* card; } ;


 int ERROR ;
 int HOST_INTR_CMD_DONE ;
 int HOST_INTR_DNLD_DONE ;
 int HOST_INTR_EVENT_RDY ;
 int HOST_INTR_UPLD_RDY ;
 int INTR ;
 int PCIE_HOST_INT_STATUS ;
 scalar_t__ PS_STATE_AWAKE ;
 scalar_t__ PS_STATE_SLEEP ;
 int del_timer (int *) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_pcie_enable_host_int (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_pcie_ok_to_access_hw (struct mwifiex_adapter*) ;
 int mwifiex_pcie_process_cmd_complete (struct mwifiex_adapter*) ;
 int mwifiex_pcie_process_event_ready (struct mwifiex_adapter*) ;
 int mwifiex_pcie_process_recv_data (struct mwifiex_adapter*) ;
 int mwifiex_pcie_send_data_complete (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_read_reg (struct mwifiex_adapter*,int ,int*) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mwifiex_process_int_status(struct mwifiex_adapter *adapter)
{
 int ret;
 u32 pcie_ireg = 0;
 unsigned long flags;
 struct pcie_service_card *card = adapter->card;

 spin_lock_irqsave(&adapter->int_lock, flags);
 if (!card->msi_enable) {

  pcie_ireg = adapter->int_status;
 }
 adapter->int_status = 0;
 spin_unlock_irqrestore(&adapter->int_lock, flags);

 if (card->msi_enable) {
  if (mwifiex_pcie_ok_to_access_hw(adapter)) {
   if (mwifiex_read_reg(adapter, PCIE_HOST_INT_STATUS,
          &pcie_ireg)) {
    mwifiex_dbg(adapter, ERROR,
         "Read register failed\n");
    return -1;
   }

   if ((pcie_ireg != 0xFFFFFFFF) && (pcie_ireg)) {
    if (mwifiex_write_reg(adapter,
            PCIE_HOST_INT_STATUS,
            ~pcie_ireg)) {
     mwifiex_dbg(adapter, ERROR,
          "Write register failed\n");
     return -1;
    }
    if (!adapter->pps_uapsd_mode &&
        adapter->ps_state == PS_STATE_SLEEP) {
     adapter->ps_state = PS_STATE_AWAKE;
     adapter->pm_wakeup_fw_try = 0;
     del_timer(&adapter->wakeup_timer);
    }
   }
  }
 }

 if (pcie_ireg & HOST_INTR_DNLD_DONE) {
  mwifiex_dbg(adapter, INTR, "info: TX DNLD Done\n");
  ret = mwifiex_pcie_send_data_complete(adapter);
  if (ret)
   return ret;
 }
 if (pcie_ireg & HOST_INTR_UPLD_RDY) {
  mwifiex_dbg(adapter, INTR, "info: Rx DATA\n");
  ret = mwifiex_pcie_process_recv_data(adapter);
  if (ret)
   return ret;
 }
 if (pcie_ireg & HOST_INTR_EVENT_RDY) {
  mwifiex_dbg(adapter, INTR, "info: Rx EVENT\n");
  ret = mwifiex_pcie_process_event_ready(adapter);
  if (ret)
   return ret;
 }
 if (pcie_ireg & HOST_INTR_CMD_DONE) {
  if (adapter->cmd_sent) {
   mwifiex_dbg(adapter, INTR,
        "info: CMD sent Interrupt\n");
   adapter->cmd_sent = 0;
  }

  ret = mwifiex_pcie_process_cmd_complete(adapter);
  if (ret)
   return ret;
 }

 mwifiex_dbg(adapter, INTR,
      "info: cmd_sent=%d data_sent=%d\n",
      adapter->cmd_sent, adapter->data_sent);
 if (!card->msi_enable && !card->msix_enable &&
     adapter->ps_state != PS_STATE_SLEEP)
  mwifiex_pcie_enable_host_int(adapter);

 return 0;
}
