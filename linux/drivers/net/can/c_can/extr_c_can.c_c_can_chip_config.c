
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct c_can_priv {scalar_t__ tx_dir; scalar_t__ rxmasked; int tx_active; int (* write_reg ) (struct c_can_priv*,int ,int) ;TYPE_1__ can; } ;


 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int CONTROL_ENABLE_AR ;
 int CONTROL_TEST ;
 int C_CAN_CTRL_REG ;
 int C_CAN_STS_REG ;
 int C_CAN_TEST_REG ;
 int LEC_UNUSED ;
 int TEST_LBACK ;
 int TEST_SILENT ;
 int atomic_set (int *,int ) ;
 int c_can_configure_msg_objects (struct net_device*) ;
 int c_can_set_bittiming (struct net_device*) ;
 int c_can_software_reset (struct net_device*) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct c_can_priv*,int ,int) ;
 int stub2 (struct c_can_priv*,int ,int) ;
 int stub3 (struct c_can_priv*,int ,int) ;
 int stub4 (struct c_can_priv*,int ,int) ;
 int stub5 (struct c_can_priv*,int ,int) ;
 int stub6 (struct c_can_priv*,int ,int) ;
 int stub7 (struct c_can_priv*,int ,int) ;
 int stub8 (struct c_can_priv*,int ,int) ;

__attribute__((used)) static int c_can_chip_config(struct net_device *dev)
{
 struct c_can_priv *priv = netdev_priv(dev);
 int err;

 err = c_can_software_reset(dev);
 if (err)
  return err;


 priv->write_reg(priv, C_CAN_CTRL_REG, CONTROL_ENABLE_AR);

 if ((priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY) &&
     (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK)) {

  priv->write_reg(priv, C_CAN_CTRL_REG, CONTROL_TEST);
  priv->write_reg(priv, C_CAN_TEST_REG, TEST_LBACK | TEST_SILENT);
 } else if (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK) {

  priv->write_reg(priv, C_CAN_CTRL_REG, CONTROL_TEST);
  priv->write_reg(priv, C_CAN_TEST_REG, TEST_LBACK);
 } else if (priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY) {

  priv->write_reg(priv, C_CAN_CTRL_REG, CONTROL_TEST);
  priv->write_reg(priv, C_CAN_TEST_REG, TEST_SILENT);
 }


 c_can_configure_msg_objects(dev);


 priv->write_reg(priv, C_CAN_STS_REG, LEC_UNUSED);


 atomic_set(&priv->tx_active, 0);
 priv->rxmasked = 0;
 priv->tx_dir = 0;


 return c_can_set_bittiming(dev);
}
