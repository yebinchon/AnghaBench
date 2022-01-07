
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_tx_queue {scalar_t__ dirty_tx; scalar_t__ cur_tx; } ;
struct stmmac_priv {TYPE_1__* plat; int hw; int tx_path_in_lpi_mode; struct stmmac_tx_queue* tx_queue; } ;
struct TYPE_2__ {size_t tx_queues_to_use; int en_tx_lpi_clockgating; } ;


 int stmmac_set_eee_mode (struct stmmac_priv*,int ,int ) ;

__attribute__((used)) static void stmmac_enable_eee_mode(struct stmmac_priv *priv)
{
 u32 tx_cnt = priv->plat->tx_queues_to_use;
 u32 queue;


 for (queue = 0; queue < tx_cnt; queue++) {
  struct stmmac_tx_queue *tx_q = &priv->tx_queue[queue];

  if (tx_q->dirty_tx != tx_q->cur_tx)
   return;
 }


 if (!priv->tx_path_in_lpi_mode)
  stmmac_set_eee_mode(priv, priv->hw,
    priv->plat->en_tx_lpi_clockgating);
}
