
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int dummy; } ;


 int HBUS_TARG_PRPH_RADDR ;
 int HBUS_TARG_PRPH_RDAT ;
 int _il_rd (struct il_priv*,int ) ;
 int _il_wr (struct il_priv*,int ,int) ;

__attribute__((used)) static inline u32
_il_rd_prph(struct il_priv *il, u32 reg)
{
 _il_wr(il, HBUS_TARG_PRPH_RADDR, reg | (3 << 24));
 return _il_rd(il, HBUS_TARG_PRPH_RDAT);
}
