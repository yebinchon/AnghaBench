
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nb8800_priv {scalar_t__ base; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 nb8800_readl(struct nb8800_priv *priv, int reg)
{
 return readl_relaxed(priv->base + reg);
}
