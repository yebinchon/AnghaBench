
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_hecc_priv {scalar_t__ base; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 hecc_read(struct ti_hecc_priv *priv, int reg)
{
 return __raw_readl(priv->base + reg);
}
