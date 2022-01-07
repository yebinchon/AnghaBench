
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_tx_queue {int dummy; } ;
struct il_priv {scalar_t__ txq; TYPE_1__* cfg; } ;
struct TYPE_2__ {int num_of_queues; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IL_ERR (char*) ;
 scalar_t__ kcalloc (int ,int,int ) ;

int
il_alloc_txq_mem(struct il_priv *il)
{
 if (!il->txq)
  il->txq =
      kcalloc(il->cfg->num_of_queues,
       sizeof(struct il_tx_queue),
       GFP_KERNEL);
 if (!il->txq) {
  IL_ERR("Not enough memory for txq\n");
  return -ENOMEM;
 }
 return 0;
}
