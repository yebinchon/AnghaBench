
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int * txq; } ;


 int kfree (int *) ;

void
il_free_txq_mem(struct il_priv *il)
{
 kfree(il->txq);
 il->txq = ((void*)0);
}
