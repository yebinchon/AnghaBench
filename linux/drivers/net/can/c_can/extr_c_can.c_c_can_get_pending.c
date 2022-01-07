
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c_can_priv {int (* read_reg ) (struct c_can_priv*,int ) ;} ;


 int C_CAN_NEWDAT1_REG ;
 int stub1 (struct c_can_priv*,int ) ;

__attribute__((used)) static inline u32 c_can_get_pending(struct c_can_priv *priv)
{
 u32 pend = priv->read_reg(priv, C_CAN_NEWDAT1_REG);

 return pend;
}
