
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int dummy; } ;


 int _il_rd (struct il_priv*,int) ;
 int _il_wr (struct il_priv*,int,int) ;

__attribute__((used)) static inline void
_il_set_bit(struct il_priv *il, u32 reg, u32 mask)
{
 _il_wr(il, reg, _il_rd(il, reg) | mask);
}
