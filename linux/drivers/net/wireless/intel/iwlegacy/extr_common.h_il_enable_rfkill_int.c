
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int CSR_INT_BIT_RF_KILL ;
 int CSR_INT_MASK ;
 int _il_wr (struct il_priv*,int ,int ) ;

__attribute__((used)) static inline void
il_enable_rfkill_int(struct il_priv *il)
{
 _il_wr(il, CSR_INT_MASK, CSR_INT_BIT_RF_KILL);
}
