
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct can_bittiming {int brp; int sjw; int prop_seg; int phase_seg1; int phase_seg2; } ;
struct TYPE_2__ {int ctrlmode; struct can_bittiming bittiming; } ;
struct sun4ican_priv {scalar_t__ base; TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 scalar_t__ SUN4I_REG_BTIME_ADDR ;
 int netdev_dbg (struct net_device*,char*,int) ;
 struct sun4ican_priv* netdev_priv (struct net_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sun4ican_set_bittiming(struct net_device *dev)
{
 struct sun4ican_priv *priv = netdev_priv(dev);
 struct can_bittiming *bt = &priv->can.bittiming;
 u32 cfg;

 cfg = ((bt->brp - 1) & 0x3FF) |
      (((bt->sjw - 1) & 0x3) << 14) |
      (((bt->prop_seg + bt->phase_seg1 - 1) & 0xf) << 16) |
      (((bt->phase_seg2 - 1) & 0x7) << 20);
 if (priv->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES)
  cfg |= 0x800000;

 netdev_dbg(dev, "setting BITTIMING=0x%08x\n", cfg);
 writel(cfg, priv->base + SUN4I_REG_BTIME_ADDR);

 return 0;
}
