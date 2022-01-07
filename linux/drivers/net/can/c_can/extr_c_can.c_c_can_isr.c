
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct c_can_priv {int (* read_reg ) (struct c_can_priv*,int ) ;int napi; int sie_pending; } ;
typedef int irqreturn_t ;


 int C_CAN_INT_REG ;
 int INT_STS_PENDING ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int atomic_set (int *,int) ;
 int c_can_irq_control (struct c_can_priv*,int) ;
 int napi_schedule (int *) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct c_can_priv*,int ) ;

__attribute__((used)) static irqreturn_t c_can_isr(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct c_can_priv *priv = netdev_priv(dev);
 int reg_int;

 reg_int = priv->read_reg(priv, C_CAN_INT_REG);
 if (!reg_int)
  return IRQ_NONE;


 if (reg_int & INT_STS_PENDING)
  atomic_set(&priv->sie_pending, 1);


 c_can_irq_control(priv, 0);
 napi_schedule(&priv->napi);

 return IRQ_HANDLED;
}
