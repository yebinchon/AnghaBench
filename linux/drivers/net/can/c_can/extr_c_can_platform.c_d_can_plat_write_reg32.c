
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c_can_priv {scalar_t__* regs; scalar_t__ base; } ;
typedef enum reg { ____Placeholder_reg } reg ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void d_can_plat_write_reg32(const struct c_can_priv *priv, enum reg index,
  u32 val)
{
 writel(val, priv->base + priv->regs[index]);
}
