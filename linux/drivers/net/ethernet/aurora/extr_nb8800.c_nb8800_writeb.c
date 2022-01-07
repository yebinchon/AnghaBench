
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nb8800_priv {scalar_t__ base; } ;


 int writeb_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void nb8800_writeb(struct nb8800_priv *priv, int reg, u8 val)
{
 writeb_relaxed(val, priv->base + reg);
}
