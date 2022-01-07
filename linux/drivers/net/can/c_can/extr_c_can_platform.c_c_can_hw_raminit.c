
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c_can_priv {int (* write_reg32 ) (struct c_can_priv const*,int ,int ) ;int (* read_reg32 ) (struct c_can_priv const*,int ) ;} ;


 int C_CAN_FUNCTION_REG ;
 int DCAN_RAM_INIT_BIT ;
 int c_can_hw_raminit_wait (struct c_can_priv const*,int ) ;
 int stub1 (struct c_can_priv const*,int ) ;
 int stub2 (struct c_can_priv const*,int ,int ) ;
 int stub3 (struct c_can_priv const*,int ,int ) ;

__attribute__((used)) static void c_can_hw_raminit(const struct c_can_priv *priv, bool enable)
{
 u32 ctrl;

 ctrl = priv->read_reg32(priv, C_CAN_FUNCTION_REG);
 ctrl &= ~DCAN_RAM_INIT_BIT;
 priv->write_reg32(priv, C_CAN_FUNCTION_REG, ctrl);
 c_can_hw_raminit_wait(priv, ctrl);

 if (enable) {
  ctrl |= DCAN_RAM_INIT_BIT;
  priv->write_reg32(priv, C_CAN_FUNCTION_REG, ctrl);
  c_can_hw_raminit_wait(priv, ctrl);
 }
}
