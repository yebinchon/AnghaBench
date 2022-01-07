
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct at91_priv {int reg_base; } ;
typedef enum at91_reg { ____Placeholder_at91_reg } at91_reg ;


 int writel_relaxed (int ,int) ;

__attribute__((used)) static inline void at91_write(const struct at91_priv *priv, enum at91_reg reg,
  u32 value)
{
 writel_relaxed(value, priv->reg_base + reg);
}
