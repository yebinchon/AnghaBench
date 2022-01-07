
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int lock; int status; int irq_tasklet; } ;
typedef int irqreturn_t ;


 int CSR_FH_INT_STATUS ;
 int CSR_INT ;
 int CSR_INT_BIT_SCD ;
 int CSR_INT_MASK ;
 int D_ISR (char*,...) ;
 int IL_WARN (char*,int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int S_INT_ENABLED ;
 int _il_rd (struct il_priv*,int ) ;
 int _il_wr (struct il_priv*,int ,int) ;
 int il_enable_interrupts (struct il_priv*) ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;

irqreturn_t
il_isr(int irq, void *data)
{
 struct il_priv *il = data;
 u32 inta, inta_mask;
 u32 inta_fh;
 unsigned long flags;
 if (!il)
  return IRQ_NONE;

 spin_lock_irqsave(&il->lock, flags);





 inta_mask = _il_rd(il, CSR_INT_MASK);
 _il_wr(il, CSR_INT_MASK, 0x00000000);


 inta = _il_rd(il, CSR_INT);
 inta_fh = _il_rd(il, CSR_FH_INT_STATUS);




 if (!inta && !inta_fh) {
  D_ISR("Ignore interrupt, inta == 0, inta_fh == 0\n");
  goto none;
 }

 if (inta == 0xFFFFFFFF || (inta & 0xFFFFFFF0) == 0xa5a5a5a0) {


  IL_WARN("HARDWARE GONE?? INTA == 0x%08x\n", inta);
  goto unplugged;
 }

 D_ISR("ISR inta 0x%08x, enabled 0x%08x, fh 0x%08x\n", inta, inta_mask,
       inta_fh);

 inta &= ~CSR_INT_BIT_SCD;


 if (likely(inta || inta_fh))
  tasklet_schedule(&il->irq_tasklet);

unplugged:
 spin_unlock_irqrestore(&il->lock, flags);
 return IRQ_HANDLED;

none:


 if (test_bit(S_INT_ENABLED, &il->status))
  il_enable_interrupts(il);
 spin_unlock_irqrestore(&il->lock, flags);
 return IRQ_NONE;
}
