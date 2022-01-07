
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct unimac_mdio_priv {scalar_t__ base; } ;


 int CONFIG_CPU_BIG_ENDIAN ;
 int CONFIG_MIPS ;
 scalar_t__ IS_ENABLED (int ) ;
 int __raw_writel (scalar_t__,scalar_t__) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void unimac_mdio_writel(struct unimac_mdio_priv *priv, u32 val,
          u32 offset)
{
 if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
  __raw_writel(val, priv->base + offset);
 else
  writel_relaxed(val, priv->base + offset);
}
