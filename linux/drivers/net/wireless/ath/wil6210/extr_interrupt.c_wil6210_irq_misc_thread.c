
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* notify ) (int ,int ) ;} ;
struct wil6210_priv {int isr_misc; int n_msi; int suspend_resp_comp; int wq; scalar_t__ suspend_resp_rcvd; int platform_handle; TYPE_1__ platform_ops; int recovery_state; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ISR_MISC_FW_ERROR ;
 int ISR_MISC_MBOX_EVT ;
 int WIL_PLATFORM_EVT_FW_CRASH ;
 int fw_recovery_pending ;
 int stub1 (int ,int ) ;
 int trace_wil6210_irq_misc_thread (int) ;
 int wake_up_interruptible (int *) ;
 int wil6210_unmask_irq_misc (struct wil6210_priv*,int) ;
 int wil_dbg_irq (struct wil6210_priv*,char*,...) ;
 int wil_err (struct wil6210_priv*,char*) ;
 int wil_fw_core_dump (struct wil6210_priv*) ;
 int wil_fw_error_recovery (struct wil6210_priv*) ;
 int wil_notify_fw_error (struct wil6210_priv*) ;
 int wmi_recv_cmd (struct wil6210_priv*) ;

__attribute__((used)) static irqreturn_t wil6210_irq_misc_thread(int irq, void *cookie)
{
 struct wil6210_priv *wil = cookie;
 u32 isr = wil->isr_misc;

 trace_wil6210_irq_misc_thread(isr);
 wil_dbg_irq(wil, "Thread ISR MISC 0x%08x\n", isr);

 if (isr & ISR_MISC_FW_ERROR) {
  wil->recovery_state = fw_recovery_pending;
  wil_fw_core_dump(wil);
  wil_notify_fw_error(wil);
  isr &= ~ISR_MISC_FW_ERROR;
  if (wil->platform_ops.notify) {
   wil_err(wil, "notify platform driver about FW crash");
   wil->platform_ops.notify(wil->platform_handle,
       WIL_PLATFORM_EVT_FW_CRASH);
  } else {
   wil_fw_error_recovery(wil);
  }
 }
 if (isr & ISR_MISC_MBOX_EVT) {
  wil_dbg_irq(wil, "MBOX event\n");
  wmi_recv_cmd(wil);
  isr &= ~ISR_MISC_MBOX_EVT;
 }

 if (isr)
  wil_dbg_irq(wil, "un-handled MISC ISR bits 0x%08x\n", isr);

 wil->isr_misc = 0;

 wil6210_unmask_irq_misc(wil, 0);




 if (wil->n_msi == 3 && wil->suspend_resp_rcvd) {
  wil_dbg_irq(wil, "set suspend_resp_comp to true\n");
  wil->suspend_resp_comp = 1;
  wake_up_interruptible(&wil->wq);
 }

 return IRQ_HANDLED;
}
