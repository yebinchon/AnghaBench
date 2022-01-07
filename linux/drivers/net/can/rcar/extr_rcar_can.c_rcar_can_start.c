
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int ctrlmode; int state; } ;
struct rcar_can_priv {int ier; TYPE_2__* regs; TYPE_1__ can; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int tfcr; int rfcr; int str; int ctlr; int eier; int ecsr; int ier; int mier1; int * fidcr; int mkivlr1; int * mkr_2_9; } ;


 int CAN_CTRLMODE_BERR_REPORTING ;
 int CAN_STATE_ERROR_ACTIVE ;
 int MAX_STR_READS ;
 int RCAR_CAN_CTLR_BOM_ENT ;
 int RCAR_CAN_CTLR_CANM ;
 int RCAR_CAN_CTLR_CANM_FORCE_RESET ;
 int RCAR_CAN_CTLR_IDFM_MIXED ;
 int RCAR_CAN_CTLR_MBM ;
 int RCAR_CAN_CTLR_MLM ;
 int RCAR_CAN_CTLR_SLPM ;
 int RCAR_CAN_ECSR_EDPM ;
 int RCAR_CAN_EIER_BEIE ;
 int RCAR_CAN_EIER_BOEIE ;
 int RCAR_CAN_EIER_EPIE ;
 int RCAR_CAN_EIER_EWIE ;
 int RCAR_CAN_EIER_OLIE ;
 int RCAR_CAN_EIER_ORIE ;
 int RCAR_CAN_FIDCR_IDE ;
 int RCAR_CAN_FIDCR_RTR ;
 int RCAR_CAN_IER_ERSIE ;
 int RCAR_CAN_IER_RXFIE ;
 int RCAR_CAN_IER_TXFIE ;
 int RCAR_CAN_MIER1_RXFIE ;
 int RCAR_CAN_MIER1_TXFIE ;
 int RCAR_CAN_RFCR_RFE ;
 int RCAR_CAN_STR_RSTST ;
 int RCAR_CAN_TFCR_TFE ;
 struct rcar_can_priv* netdev_priv (struct net_device*) ;
 int rcar_can_set_bittiming (struct net_device*) ;
 int readw (int *) ;
 int writeb (int,int *) ;
 int writel (int,int *) ;
 int writew (int,int *) ;

__attribute__((used)) static void rcar_can_start(struct net_device *ndev)
{
 struct rcar_can_priv *priv = netdev_priv(ndev);
 u16 ctlr;
 int i;







 ctlr = readw(&priv->regs->ctlr);
 ctlr &= ~RCAR_CAN_CTLR_SLPM;
 writew(ctlr, &priv->regs->ctlr);

 ctlr |= RCAR_CAN_CTLR_CANM_FORCE_RESET;
 writew(ctlr, &priv->regs->ctlr);
 for (i = 0; i < MAX_STR_READS; i++) {
  if (readw(&priv->regs->str) & RCAR_CAN_STR_RSTST)
   break;
 }
 rcar_can_set_bittiming(ndev);
 ctlr |= RCAR_CAN_CTLR_IDFM_MIXED;
 ctlr |= RCAR_CAN_CTLR_BOM_ENT;

 ctlr |= RCAR_CAN_CTLR_MBM;
 ctlr |= RCAR_CAN_CTLR_MLM;
 writew(ctlr, &priv->regs->ctlr);


 writel(0, &priv->regs->mkr_2_9[6]);
 writel(0, &priv->regs->mkr_2_9[7]);

 writel(0, &priv->regs->mkivlr1);

 writel(0, &priv->regs->fidcr[0]);
 writel(RCAR_CAN_FIDCR_IDE | RCAR_CAN_FIDCR_RTR, &priv->regs->fidcr[1]);

 writel(RCAR_CAN_MIER1_RXFIE | RCAR_CAN_MIER1_TXFIE, &priv->regs->mier1);

 priv->ier = RCAR_CAN_IER_ERSIE | RCAR_CAN_IER_RXFIE |
      RCAR_CAN_IER_TXFIE;
 writeb(priv->ier, &priv->regs->ier);


 writeb(RCAR_CAN_ECSR_EDPM, &priv->regs->ecsr);

 writeb(RCAR_CAN_EIER_EWIE | RCAR_CAN_EIER_EPIE | RCAR_CAN_EIER_BOEIE |
        (priv->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING ?
        RCAR_CAN_EIER_BEIE : 0) | RCAR_CAN_EIER_ORIE |
        RCAR_CAN_EIER_OLIE, &priv->regs->eier);
 priv->can.state = CAN_STATE_ERROR_ACTIVE;


 writew(ctlr & ~RCAR_CAN_CTLR_CANM, &priv->regs->ctlr);
 for (i = 0; i < MAX_STR_READS; i++) {
  if (!(readw(&priv->regs->str) & RCAR_CAN_STR_RSTST))
   break;
 }

 writeb(RCAR_CAN_RFCR_RFE, &priv->regs->rfcr);
 writeb(RCAR_CAN_TFCR_TFE, &priv->regs->tfcr);
}
