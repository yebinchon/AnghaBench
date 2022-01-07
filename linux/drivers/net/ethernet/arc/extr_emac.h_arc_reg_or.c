
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_emac_priv {int dummy; } ;


 unsigned int arc_reg_get (struct arc_emac_priv*,int) ;
 int arc_reg_set (struct arc_emac_priv*,int,unsigned int) ;

__attribute__((used)) static inline void arc_reg_or(struct arc_emac_priv *priv, int reg, int mask)
{
 unsigned int value = arc_reg_get(priv, reg);

 arc_reg_set(priv, reg, value | mask);
}
