
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int dummy; } ;


 int IL49_SCD_TXFACT ;
 int il_wr_prph (struct il_priv*,int ,int ) ;

void
il4965_txq_set_sched(struct il_priv *il, u32 mask)
{
 il_wr_prph(il, IL49_SCD_TXFACT, mask);
}
