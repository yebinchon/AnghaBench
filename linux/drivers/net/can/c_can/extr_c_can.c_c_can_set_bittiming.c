
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct can_bittiming {int brp; unsigned int sjw; unsigned int prop_seg; unsigned int phase_seg1; unsigned int phase_seg2; } ;
struct TYPE_2__ {struct can_bittiming bittiming; } ;
struct c_can_priv {unsigned int (* read_reg ) (struct c_can_priv*,int ) ;int (* write_reg ) (struct c_can_priv*,int ,unsigned int) ;TYPE_1__ can; } ;


 unsigned int BRP_EXT_BRPE_MASK ;
 int BTR_BRP_MASK ;
 unsigned int BTR_SJW_SHIFT ;
 unsigned int BTR_TSEG1_SHIFT ;
 unsigned int BTR_TSEG2_SHIFT ;
 unsigned int CONTROL_CCE ;
 unsigned int CONTROL_INIT ;
 int C_CAN_BRPEXT_REG ;
 int C_CAN_BTR_REG ;
 int C_CAN_CTRL_REG ;
 int c_can_wait_for_ctrl_init (struct net_device*,struct c_can_priv*,unsigned int) ;
 int netdev_info (struct net_device*,char*,unsigned int,unsigned int) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 unsigned int stub1 (struct c_can_priv*,int ) ;
 int stub2 (struct c_can_priv*,int ,unsigned int) ;
 int stub3 (struct c_can_priv*,int ,unsigned int) ;
 int stub4 (struct c_can_priv*,int ,unsigned int) ;
 int stub5 (struct c_can_priv*,int ,unsigned int) ;

__attribute__((used)) static int c_can_set_bittiming(struct net_device *dev)
{
 unsigned int reg_btr, reg_brpe, ctrl_save;
 u8 brp, brpe, sjw, tseg1, tseg2;
 u32 ten_bit_brp;
 struct c_can_priv *priv = netdev_priv(dev);
 const struct can_bittiming *bt = &priv->can.bittiming;
 int res;


 ten_bit_brp = bt->brp - 1;
 brp = ten_bit_brp & BTR_BRP_MASK;
 brpe = ten_bit_brp >> 6;

 sjw = bt->sjw - 1;
 tseg1 = bt->prop_seg + bt->phase_seg1 - 1;
 tseg2 = bt->phase_seg2 - 1;
 reg_btr = brp | (sjw << BTR_SJW_SHIFT) | (tseg1 << BTR_TSEG1_SHIFT) |
   (tseg2 << BTR_TSEG2_SHIFT);
 reg_brpe = brpe & BRP_EXT_BRPE_MASK;

 netdev_info(dev,
  "setting BTR=%04x BRPE=%04x\n", reg_btr, reg_brpe);

 ctrl_save = priv->read_reg(priv, C_CAN_CTRL_REG);
 ctrl_save &= ~CONTROL_INIT;
 priv->write_reg(priv, C_CAN_CTRL_REG, CONTROL_CCE | CONTROL_INIT);
 res = c_can_wait_for_ctrl_init(dev, priv, CONTROL_INIT);
 if (res)
  return res;

 priv->write_reg(priv, C_CAN_BTR_REG, reg_btr);
 priv->write_reg(priv, C_CAN_BRPEXT_REG, reg_brpe);
 priv->write_reg(priv, C_CAN_CTRL_REG, ctrl_save);

 return c_can_wait_for_ctrl_init(dev, priv, 0);
}
