
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7530_priv {int dummy; } ;
struct mt7530_dummy_poll {int reg; struct mt7530_priv* priv; } ;



__attribute__((used)) static inline void INIT_MT7530_DUMMY_POLL(struct mt7530_dummy_poll *p,
       struct mt7530_priv *priv, u32 reg)
{
 p->priv = priv;
 p->reg = reg;
}
