
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct c_can_priv {scalar_t__* regs; scalar_t__ base; } ;
typedef enum reg { ____Placeholder_reg } reg ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static void c_can_plat_write_reg_aligned_to_16bit(const struct c_can_priv *priv,
      enum reg index, u16 val)
{
 writew(val, priv->base + priv->regs[index]);
}
