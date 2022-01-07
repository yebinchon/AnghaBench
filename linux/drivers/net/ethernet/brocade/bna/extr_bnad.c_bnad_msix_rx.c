
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad_rx_ctrl {int rx_intr_ctr; } ;
struct bna_ccb {int bnad; scalar_t__ ctrl; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bnad_netif_rx_schedule_poll (int ,struct bna_ccb*) ;

__attribute__((used)) static irqreturn_t
bnad_msix_rx(int irq, void *data)
{
 struct bna_ccb *ccb = (struct bna_ccb *)data;

 if (ccb) {
  ((struct bnad_rx_ctrl *)ccb->ctrl)->rx_intr_ctr++;
  bnad_netif_rx_schedule_poll(ccb->bnad, ccb);
 }

 return IRQ_HANDLED;
}
