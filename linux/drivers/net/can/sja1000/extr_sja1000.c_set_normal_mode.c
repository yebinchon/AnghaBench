
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ctrlmode; int state; } ;
struct sja1000_priv {unsigned char (* read_reg ) (struct sja1000_priv*,int ) ;int (* write_reg ) (struct sja1000_priv*,int ,int) ;TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 int CAN_CTRLMODE_BERR_REPORTING ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_PRESUME_ACK ;
 int CAN_STATE_ERROR_ACTIVE ;
 int IRQ_ALL ;
 int IRQ_BEI ;
 int MOD_LOM ;
 unsigned char MOD_RM ;
 int MOD_STM ;
 int SJA1000_IER ;
 int SJA1000_MOD ;
 int netdev_err (struct net_device*,char*) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 unsigned char stub1 (struct sja1000_priv*,int ) ;
 int stub2 (struct sja1000_priv*,int ,int) ;
 int stub3 (struct sja1000_priv*,int ,int) ;
 int stub4 (struct sja1000_priv*,int ,int) ;
 unsigned char stub5 (struct sja1000_priv*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void set_normal_mode(struct net_device *dev)
{
 struct sja1000_priv *priv = netdev_priv(dev);
 unsigned char status = priv->read_reg(priv, SJA1000_MOD);
 u8 mod_reg_val = 0x00;
 int i;

 for (i = 0; i < 100; i++) {

  if ((status & MOD_RM) == 0) {
   priv->can.state = CAN_STATE_ERROR_ACTIVE;

   if (priv->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING)
    priv->write_reg(priv, SJA1000_IER, IRQ_ALL);
   else
    priv->write_reg(priv, SJA1000_IER,
      IRQ_ALL & ~IRQ_BEI);
   return;
  }


  if (priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY)
   mod_reg_val |= MOD_LOM;
  if (priv->can.ctrlmode & CAN_CTRLMODE_PRESUME_ACK)
   mod_reg_val |= MOD_STM;
  priv->write_reg(priv, SJA1000_MOD, mod_reg_val);

  udelay(10);

  status = priv->read_reg(priv, SJA1000_MOD);
 }

 netdev_err(dev, "setting SJA1000 into normal mode failed!\n");
}
