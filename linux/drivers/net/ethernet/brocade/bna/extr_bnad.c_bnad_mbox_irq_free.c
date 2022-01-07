
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int bna_lock; } ;


 int BNAD_GET_MBOX_IRQ (struct bnad*) ;
 int bnad_disable_mbox_irq (struct bnad*) ;
 int free_irq (int,struct bnad*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
bnad_mbox_irq_free(struct bnad *bnad)
{
 int irq;
 unsigned long flags;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bnad_disable_mbox_irq(bnad);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 irq = BNAD_GET_MBOX_IRQ(bnad);
 free_irq(irq, bnad);
}
