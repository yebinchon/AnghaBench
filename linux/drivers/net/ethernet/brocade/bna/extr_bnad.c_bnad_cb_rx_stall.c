
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnad_rx_info {struct bnad_rx_ctrl* rx_ctrl; } ;
struct bnad_rx_ctrl {struct bna_ccb* ccb; } ;
struct bnad {int dummy; } ;
struct bna_rx {scalar_t__ priv; } ;
struct bna_ccb {TYPE_1__** rcb; } ;
struct TYPE_2__ {int flags; } ;


 int BNAD_MAX_RXP_PER_RX ;
 int BNAD_RXQ_POST_OK ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static void
bnad_cb_rx_stall(struct bnad *bnad, struct bna_rx *rx)
{
 struct bnad_rx_info *rx_info = (struct bnad_rx_info *)rx->priv;
 struct bna_ccb *ccb;
 struct bnad_rx_ctrl *rx_ctrl;
 int i;

 for (i = 0; i < BNAD_MAX_RXP_PER_RX; i++) {
  rx_ctrl = &rx_info->rx_ctrl[i];
  ccb = rx_ctrl->ccb;
  if (!ccb)
   continue;

  clear_bit(BNAD_RXQ_POST_OK, &ccb->rcb[0]->flags);

  if (ccb->rcb[1])
   clear_bit(BNAD_RXQ_POST_OK, &ccb->rcb[1]->flags);
 }
}
