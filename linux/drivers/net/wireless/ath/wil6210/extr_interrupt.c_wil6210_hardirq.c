
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ (* irq_rx ) (int,void*) ;scalar_t__ (* irq_tx ) (int,void*) ;} ;
struct wil6210_priv {TYPE_1__ txrx_ops; } ;
typedef scalar_t__ irqreturn_t ;


 int BIT_DMA_PSEUDO_CAUSE_MISC ;
 int BIT_DMA_PSEUDO_CAUSE_RX ;
 int BIT_DMA_PSEUDO_CAUSE_TX ;
 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 scalar_t__ IRQ_WAKE_THREAD ;
 int RGF_DMA_PSEUDO_CAUSE ;
 scalar_t__ stub1 (int,void*) ;
 scalar_t__ stub2 (int,void*) ;
 int trace_wil6210_irq_pseudo (int) ;
 scalar_t__ unlikely (int) ;
 int wil6210_debug_irq_mask (struct wil6210_priv*,int) ;
 scalar_t__ wil6210_irq_misc (int,void*) ;
 int wil6210_mask_irq_pseudo (struct wil6210_priv*) ;
 int wil6210_unmask_irq_pseudo (struct wil6210_priv*) ;
 int wil_dbg_irq (struct wil6210_priv*,char*,int) ;
 int wil_r (struct wil6210_priv*,int ) ;

__attribute__((used)) static irqreturn_t wil6210_hardirq(int irq, void *cookie)
{
 irqreturn_t rc = IRQ_HANDLED;
 struct wil6210_priv *wil = cookie;
 u32 pseudo_cause = wil_r(wil, RGF_DMA_PSEUDO_CAUSE);




 if (unlikely((pseudo_cause == 0) || ((pseudo_cause & 0xff) == 0xff)))
  return IRQ_NONE;


 if (unlikely(wil6210_debug_irq_mask(wil, pseudo_cause)))
  return IRQ_NONE;

 trace_wil6210_irq_pseudo(pseudo_cause);
 wil_dbg_irq(wil, "Pseudo IRQ 0x%08x\n", pseudo_cause);

 wil6210_mask_irq_pseudo(wil);
 if ((pseudo_cause & BIT_DMA_PSEUDO_CAUSE_RX) &&
     (wil->txrx_ops.irq_rx(irq, cookie) == IRQ_WAKE_THREAD))
  rc = IRQ_WAKE_THREAD;

 if ((pseudo_cause & BIT_DMA_PSEUDO_CAUSE_TX) &&
     (wil->txrx_ops.irq_tx(irq, cookie) == IRQ_WAKE_THREAD))
  rc = IRQ_WAKE_THREAD;

 if ((pseudo_cause & BIT_DMA_PSEUDO_CAUSE_MISC) &&
     (wil6210_irq_misc(irq, cookie) == IRQ_WAKE_THREAD))
  rc = IRQ_WAKE_THREAD;


 if (rc != IRQ_WAKE_THREAD)
  wil6210_unmask_irq_pseudo(wil);

 return rc;
}
