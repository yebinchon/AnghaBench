
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct can_bittiming {int brp; int sjw; int prop_seg; int phase_seg1; int phase_seg2; } ;
struct TYPE_2__ {int ctrlmode; struct can_bittiming bittiming; } ;
struct cc770_priv {TYPE_1__ can; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int bit_timing_0 ;
 int bit_timing_1 ;
 int cc770_write_reg (struct cc770_priv*,int ,int) ;
 int netdev_info (struct net_device*,char*,int,int) ;
 struct cc770_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cc770_set_bittiming(struct net_device *dev)
{
 struct cc770_priv *priv = netdev_priv(dev);
 struct can_bittiming *bt = &priv->can.bittiming;
 u8 btr0, btr1;

 btr0 = ((bt->brp - 1) & 0x3f) | (((bt->sjw - 1) & 0x3) << 6);
 btr1 = ((bt->prop_seg + bt->phase_seg1 - 1) & 0xf) |
  (((bt->phase_seg2 - 1) & 0x7) << 4);
 if (priv->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES)
  btr1 |= 0x80;

 netdev_info(dev, "setting BTR0=0x%02x BTR1=0x%02x\n", btr0, btr1);

 cc770_write_reg(priv, bit_timing_0, btr0);
 cc770_write_reg(priv, bit_timing_1, btr1);

 return 0;
}
