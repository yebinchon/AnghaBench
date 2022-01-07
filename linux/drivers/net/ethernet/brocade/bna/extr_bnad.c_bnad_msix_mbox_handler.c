
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnad {int bna_lock; int bna; int run_flags; } ;
typedef int irqreturn_t ;


 int BNAD_RF_MBOX_IRQ_DISABLED ;
 scalar_t__ BNA_IS_MBOX_ERR_INTR (int *,int ) ;
 int IRQ_HANDLED ;
 int bna_intr_status_get (int *,int ) ;
 int bna_mbox_handler (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static irqreturn_t
bnad_msix_mbox_handler(int irq, void *data)
{
 u32 intr_status;
 unsigned long flags;
 struct bnad *bnad = (struct bnad *)data;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 if (unlikely(test_bit(BNAD_RF_MBOX_IRQ_DISABLED, &bnad->run_flags))) {
  spin_unlock_irqrestore(&bnad->bna_lock, flags);
  return IRQ_HANDLED;
 }

 bna_intr_status_get(&bnad->bna, intr_status);

 if (BNA_IS_MBOX_ERR_INTR(&bnad->bna, intr_status))
  bna_mbox_handler(&bnad->bna, intr_status);

 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 return IRQ_HANDLED;
}
