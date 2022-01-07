
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int GFP_ATOMIC ;
 int il4965_rx_allocate (struct il_priv*,int ) ;
 int il4965_rx_queue_restock (struct il_priv*) ;

void
il4965_rx_replenish_now(struct il_priv *il)
{
 il4965_rx_allocate(il, GFP_ATOMIC);

 il4965_rx_queue_restock(il);
}
