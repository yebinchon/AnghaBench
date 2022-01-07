
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nb8800_priv {scalar_t__ base; } ;


 int writew_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void nb8800_writew(struct nb8800_priv *priv, int reg, u16 val)
{
 writew_relaxed(val, priv->base + reg);
}
