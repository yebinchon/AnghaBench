
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nb8800_priv {scalar_t__ base; } ;


 int readb_relaxed (scalar_t__) ;

__attribute__((used)) static inline u8 nb8800_readb(struct nb8800_priv *priv, int reg)
{
 return readb_relaxed(priv->base + reg);
}
