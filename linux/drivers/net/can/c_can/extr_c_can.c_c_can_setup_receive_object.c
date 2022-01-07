
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct c_can_priv {int (* write_reg ) (struct c_can_priv*,int ,int ) ;int (* write_reg32 ) (struct c_can_priv*,int ,int ) ;} ;


 int ARB1_REG ;
 int BIT (int) ;
 int C_CAN_IFACE (int ,int) ;
 int IF_ARB_MSGVAL ;
 int IF_COMM_RCV_SETUP ;
 int MASK1_REG ;
 int MSGCTRL_REG ;
 int c_can_object_put (struct net_device*,int,int ,int ) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct c_can_priv*,int ,int ) ;
 int stub2 (struct c_can_priv*,int ,int ) ;
 int stub3 (struct c_can_priv*,int ,int ) ;

__attribute__((used)) static void c_can_setup_receive_object(struct net_device *dev, int iface,
           u32 obj, u32 mask, u32 id, u32 mcont)
{
 struct c_can_priv *priv = netdev_priv(dev);

 mask |= BIT(29);
 priv->write_reg32(priv, C_CAN_IFACE(MASK1_REG, iface), mask);

 id |= IF_ARB_MSGVAL;
 priv->write_reg32(priv, C_CAN_IFACE(ARB1_REG, iface), id);

 priv->write_reg(priv, C_CAN_IFACE(MSGCTRL_REG, iface), mcont);
 c_can_object_put(dev, iface, obj, IF_COMM_RCV_SETUP);
}
