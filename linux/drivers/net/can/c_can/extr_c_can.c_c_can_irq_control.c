
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c_can_priv {int (* read_reg ) (struct c_can_priv*,int ) ;int (* write_reg ) (struct c_can_priv*,int ,int) ;} ;


 int CONTROL_IRQMSK ;
 int C_CAN_CTRL_REG ;
 int stub1 (struct c_can_priv*,int ) ;
 int stub2 (struct c_can_priv*,int ,int) ;

__attribute__((used)) static void c_can_irq_control(struct c_can_priv *priv, bool enable)
{
 u32 ctrl = priv->read_reg(priv, C_CAN_CTRL_REG) & ~CONTROL_IRQMSK;

 if (enable)
  ctrl |= CONTROL_IRQMSK;

 priv->write_reg(priv, C_CAN_CTRL_REG, ctrl);
}
