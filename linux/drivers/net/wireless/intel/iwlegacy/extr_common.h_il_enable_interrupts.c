
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int inta_mask; int status; } ;


 int CSR_INT_MASK ;
 int S_INT_ENABLED ;
 int _il_wr (struct il_priv*,int ,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void
il_enable_interrupts(struct il_priv *il)
{
 set_bit(S_INT_ENABLED, &il->status);
 _il_wr(il, CSR_INT_MASK, il->inta_mask);
}
