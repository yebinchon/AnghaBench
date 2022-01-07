
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct c_can_priv {scalar_t__ type; int (* read_reg ) (struct c_can_priv*,int ) ;int (* write_reg ) (struct c_can_priv*,int ,int) ;} ;


 scalar_t__ BOSCH_D_CAN ;
 int CONTROL_INIT ;
 int CONTROL_SWR ;
 int C_CAN_CTRL_REG ;
 int EIO ;
 int msleep (int) ;
 int netdev_err (struct net_device*,char*) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct c_can_priv*,int ,int) ;
 int stub2 (struct c_can_priv*,int ) ;

__attribute__((used)) static int c_can_software_reset(struct net_device *dev)
{
 struct c_can_priv *priv = netdev_priv(dev);
 int retry = 0;

 if (priv->type != BOSCH_D_CAN)
  return 0;

 priv->write_reg(priv, C_CAN_CTRL_REG, CONTROL_SWR | CONTROL_INIT);
 while (priv->read_reg(priv, C_CAN_CTRL_REG) & CONTROL_SWR) {
  msleep(20);
  if (retry++ > 100) {
   netdev_err(dev, "CCTRL: software reset failed\n");
   return -EIO;
  }
 }

 return 0;
}
