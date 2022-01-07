
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nb8800_priv {int dummy; } ;


 int nb8800_readl (struct nb8800_priv*,int) ;
 int nb8800_writel (struct nb8800_priv*,int,int) ;

__attribute__((used)) static inline void nb8800_maskl(struct nb8800_priv *priv, int reg,
    u32 mask, u32 val)
{
 u32 old = nb8800_readl(priv, reg);
 u32 new = (old & ~mask) | (val & mask);

 if (new != old)
  nb8800_writel(priv, reg, new);
}
