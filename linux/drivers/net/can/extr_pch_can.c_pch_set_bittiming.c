
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct can_bittiming {int brp; int sjw; int phase_seg1; int prop_seg; int phase_seg2; } ;
struct TYPE_3__ {struct can_bittiming bittiming; } ;
struct pch_can_priv {TYPE_2__* regs; TYPE_1__ can; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int cont; int brpe; int bitt; } ;


 int PCH_BIT_BRPE_BRPE_SHIFT ;
 int PCH_BIT_SJW_SHIFT ;
 int PCH_BIT_TSEG1_SHIFT ;
 int PCH_BIT_TSEG2_SHIFT ;
 int PCH_CTRL_CCE ;
 int PCH_MSK_BITT_BRP ;
 int PCH_MSK_BRPE_BRPE ;
 int iowrite32 (int,int *) ;
 struct pch_can_priv* netdev_priv (struct net_device*) ;
 int pch_can_bit_clear (int *,int ) ;
 int pch_can_bit_set (int *,int ) ;

__attribute__((used)) static int pch_set_bittiming(struct net_device *ndev)
{
 struct pch_can_priv *priv = netdev_priv(ndev);
 const struct can_bittiming *bt = &priv->can.bittiming;
 u32 canbit;
 u32 bepe;


 pch_can_bit_set(&priv->regs->cont, PCH_CTRL_CCE);

 canbit = (bt->brp - 1) & PCH_MSK_BITT_BRP;
 canbit |= (bt->sjw - 1) << PCH_BIT_SJW_SHIFT;
 canbit |= (bt->phase_seg1 + bt->prop_seg - 1) << PCH_BIT_TSEG1_SHIFT;
 canbit |= (bt->phase_seg2 - 1) << PCH_BIT_TSEG2_SHIFT;
 bepe = ((bt->brp - 1) & PCH_MSK_BRPE_BRPE) >> PCH_BIT_BRPE_BRPE_SHIFT;
 iowrite32(canbit, &priv->regs->bitt);
 iowrite32(bepe, &priv->regs->brpe);
 pch_can_bit_clear(&priv->regs->cont, PCH_CTRL_CCE);

 return 0;
}
