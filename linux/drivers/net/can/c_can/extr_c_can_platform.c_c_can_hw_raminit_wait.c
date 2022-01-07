
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c_can_priv {int (* read_reg32 ) (struct c_can_priv const*,int ) ;} ;


 int C_CAN_FUNCTION_REG ;
 int stub1 (struct c_can_priv const*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void c_can_hw_raminit_wait(const struct c_can_priv *priv, u32 mask)
{
 while (priv->read_reg32(priv, C_CAN_FUNCTION_REG) & mask)
  udelay(1);
}
