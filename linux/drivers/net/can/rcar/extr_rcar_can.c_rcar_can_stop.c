
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int state; } ;
struct rcar_can_priv {TYPE_2__ can; TYPE_1__* regs; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int ctlr; int eier; int ier; int mier1; int mier0; int str; } ;


 int CAN_STATE_STOPPED ;
 int MAX_STR_READS ;
 int RCAR_CAN_CTLR_CANM_FORCE_RESET ;
 int RCAR_CAN_CTLR_SLPM ;
 int RCAR_CAN_STR_RSTST ;
 struct rcar_can_priv* netdev_priv (struct net_device*) ;
 int readw (int *) ;
 int writeb (int ,int *) ;
 int writel (int ,int *) ;
 int writew (int,int *) ;

__attribute__((used)) static void rcar_can_stop(struct net_device *ndev)
{
 struct rcar_can_priv *priv = netdev_priv(ndev);
 u16 ctlr;
 int i;


 ctlr = readw(&priv->regs->ctlr);
 ctlr |= RCAR_CAN_CTLR_CANM_FORCE_RESET;
 writew(ctlr, &priv->regs->ctlr);
 for (i = 0; i < MAX_STR_READS; i++) {
  if (readw(&priv->regs->str) & RCAR_CAN_STR_RSTST)
   break;
 }
 writel(0, &priv->regs->mier0);
 writel(0, &priv->regs->mier1);
 writeb(0, &priv->regs->ier);
 writeb(0, &priv->regs->eier);

 ctlr |= RCAR_CAN_CTLR_SLPM;
 writew(ctlr, &priv->regs->ctlr);
 priv->can.state = CAN_STATE_STOPPED;
}
