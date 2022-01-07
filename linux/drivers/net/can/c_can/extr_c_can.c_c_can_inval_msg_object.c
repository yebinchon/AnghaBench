
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct c_can_priv {int (* write_reg ) (struct c_can_priv*,int ,int ) ;} ;


 int ARB1_REG ;
 int ARB2_REG ;
 int C_CAN_IFACE (int ,int) ;
 int c_can_inval_tx_object (struct net_device*,int,int) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct c_can_priv*,int ,int ) ;
 int stub2 (struct c_can_priv*,int ,int ) ;

__attribute__((used)) static void c_can_inval_msg_object(struct net_device *dev, int iface, int obj)
{
 struct c_can_priv *priv = netdev_priv(dev);

 priv->write_reg(priv, C_CAN_IFACE(ARB1_REG, iface), 0);
 priv->write_reg(priv, C_CAN_IFACE(ARB2_REG, iface), 0);
 c_can_inval_tx_object(dev, iface, obj);
}
