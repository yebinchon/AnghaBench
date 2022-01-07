
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_priv {int hw; TYPE_2__* plat; } ;
struct TYPE_4__ {size_t tx_queues_to_use; TYPE_1__* tx_queues_cfg; } ;
struct TYPE_3__ {size_t prio; int use_prio; } ;


 int stmmac_tx_queue_prio (struct stmmac_priv*,int ,size_t,size_t) ;

__attribute__((used)) static void stmmac_mac_config_tx_queues_prio(struct stmmac_priv *priv)
{
 u32 tx_queues_count = priv->plat->tx_queues_to_use;
 u32 queue;
 u32 prio;

 for (queue = 0; queue < tx_queues_count; queue++) {
  if (!priv->plat->tx_queues_cfg[queue].use_prio)
   continue;

  prio = priv->plat->tx_queues_cfg[queue].prio;
  stmmac_tx_queue_prio(priv, priv->hw, prio, queue);
 }
}
