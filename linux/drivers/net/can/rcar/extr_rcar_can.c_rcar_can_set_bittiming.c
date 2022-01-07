
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct can_bittiming {scalar_t__ phase_seg2; scalar_t__ sjw; scalar_t__ brp; scalar_t__ prop_seg; scalar_t__ phase_seg1; } ;
struct TYPE_4__ {struct can_bittiming bittiming; } ;
struct rcar_can_priv {int clock_select; TYPE_1__* regs; TYPE_2__ can; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int bcr; } ;


 int RCAR_CAN_BCR_BPR (scalar_t__) ;
 int RCAR_CAN_BCR_SJW (scalar_t__) ;
 int RCAR_CAN_BCR_TSEG1 (scalar_t__) ;
 int RCAR_CAN_BCR_TSEG2 (scalar_t__) ;
 struct rcar_can_priv* netdev_priv (struct net_device*) ;
 int writel (int,int *) ;

__attribute__((used)) static void rcar_can_set_bittiming(struct net_device *dev)
{
 struct rcar_can_priv *priv = netdev_priv(dev);
 struct can_bittiming *bt = &priv->can.bittiming;
 u32 bcr;

 bcr = RCAR_CAN_BCR_TSEG1(bt->phase_seg1 + bt->prop_seg - 1) |
       RCAR_CAN_BCR_BPR(bt->brp - 1) | RCAR_CAN_BCR_SJW(bt->sjw - 1) |
       RCAR_CAN_BCR_TSEG2(bt->phase_seg2 - 1);




 writel((bcr << 8) | priv->clock_select, &priv->regs->bcr);
}
