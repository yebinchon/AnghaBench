
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct at91_priv {int reg_base; } ;
typedef enum at91_reg { ____Placeholder_at91_reg } at91_reg ;


 int readl_relaxed (int) ;

__attribute__((used)) static inline u32 at91_read(const struct at91_priv *priv, enum at91_reg reg)
{
 return readl_relaxed(priv->reg_base + reg);
}
