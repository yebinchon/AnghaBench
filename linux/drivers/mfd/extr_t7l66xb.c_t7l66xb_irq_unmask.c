
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct t7l66xb {int irq_base; int lock; scalar_t__ scr; } ;
struct irq_data {int irq; } ;


 scalar_t__ SCR_IMR ;
 struct t7l66xb* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int tmio_ioread8 (scalar_t__) ;
 int tmio_iowrite8 (int,scalar_t__) ;

__attribute__((used)) static void t7l66xb_irq_unmask(struct irq_data *data)
{
 struct t7l66xb *t7l66xb = irq_data_get_irq_chip_data(data);
 unsigned long flags;
 u8 imr;

 raw_spin_lock_irqsave(&t7l66xb->lock, flags);
 imr = tmio_ioread8(t7l66xb->scr + SCR_IMR);
 imr &= ~(1 << (data->irq - t7l66xb->irq_base));
 tmio_iowrite8(imr, t7l66xb->scr + SCR_IMR);
 raw_spin_unlock_irqrestore(&t7l66xb->lock, flags);
}
