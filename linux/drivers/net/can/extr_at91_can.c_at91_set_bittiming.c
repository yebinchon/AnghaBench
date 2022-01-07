
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct can_bittiming {int brp; int sjw; int prop_seg; int phase_seg1; int phase_seg2; } ;
struct TYPE_2__ {int ctrlmode; struct can_bittiming bittiming; } ;
struct at91_priv {TYPE_1__ can; } ;


 int AT91_BR ;
 int CAN_CTRLMODE_3_SAMPLES ;
 int at91_write (struct at91_priv const*,int ,int) ;
 int netdev_info (struct net_device*,char*,int) ;
 struct at91_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int at91_set_bittiming(struct net_device *dev)
{
 const struct at91_priv *priv = netdev_priv(dev);
 const struct can_bittiming *bt = &priv->can.bittiming;
 u32 reg_br;

 reg_br = ((priv->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES) ? 1 << 24 : 0) |
  ((bt->brp - 1) << 16) | ((bt->sjw - 1) << 12) |
  ((bt->prop_seg - 1) << 8) | ((bt->phase_seg1 - 1) << 4) |
  ((bt->phase_seg2 - 1) << 0);

 netdev_info(dev, "writing AT91_BR: 0x%08x\n", reg_br);

 at91_write(priv, AT91_BR, reg_br);

 return 0;
}
