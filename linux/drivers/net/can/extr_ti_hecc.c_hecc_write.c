
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ti_hecc_priv {scalar_t__ base; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void hecc_write(struct ti_hecc_priv *priv, u32 reg, u32 val)
{
 __raw_writel(val, priv->base + reg);
}
