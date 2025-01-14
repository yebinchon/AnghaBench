
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int suspend_resp_comp; int wq; scalar_t__ suspend_resp_rcvd; scalar_t__ isr_misc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int wake_up_interruptible (int *) ;
 int wil6210_irq_misc_thread (int,void*) ;
 int wil6210_unmask_irq_pseudo (struct wil6210_priv*) ;
 int wil_dbg_irq (struct wil6210_priv*,char*) ;

__attribute__((used)) static irqreturn_t wil6210_thread_irq(int irq, void *cookie)
{
 struct wil6210_priv *wil = cookie;

 wil_dbg_irq(wil, "Thread IRQ\n");

 if (wil->isr_misc)
  wil6210_irq_misc_thread(irq, cookie);

 wil6210_unmask_irq_pseudo(wil);

 if (wil->suspend_resp_rcvd) {
  wil_dbg_irq(wil, "set suspend_resp_comp to true\n");
  wil->suspend_resp_comp = 1;
  wake_up_interruptible(&wil->wq);
 }

 return IRQ_HANDLED;
}
