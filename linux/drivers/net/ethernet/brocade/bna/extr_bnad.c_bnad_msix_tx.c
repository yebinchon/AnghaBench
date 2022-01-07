
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int dummy; } ;
struct bna_tcb {struct bnad* bnad; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bnad_tx_complete (struct bnad*,struct bna_tcb*) ;

__attribute__((used)) static irqreturn_t
bnad_msix_tx(int irq, void *data)
{
 struct bna_tcb *tcb = (struct bna_tcb *)data;
 struct bnad *bnad = tcb->bnad;

 bnad_tx_complete(bnad, tcb);

 return IRQ_HANDLED;
}
