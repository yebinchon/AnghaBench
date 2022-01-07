
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int dummy; } ;


 int HBUS_TARG_PRPH_WADDR ;
 int HBUS_TARG_PRPH_WDAT ;
 int _il_wr (struct il_priv*,int ,int) ;

__attribute__((used)) static inline void
_il_wr_prph(struct il_priv *il, u32 addr, u32 val)
{
 _il_wr(il, HBUS_TARG_PRPH_WADDR, ((addr & 0x0000FFFF) | (3 << 24)));
 _il_wr(il, HBUS_TARG_PRPH_WDAT, val);
}
