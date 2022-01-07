
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stmmac_priv {int dev; TYPE_1__* plat; } ;
struct TYPE_2__ {scalar_t__ tx_queues_to_use; } ;


 int netdev_get_tx_queue (int ,scalar_t__) ;
 int netif_tx_start_queue (int ) ;

__attribute__((used)) static void stmmac_start_all_queues(struct stmmac_priv *priv)
{
 u32 tx_queues_cnt = priv->plat->tx_queues_to_use;
 u32 queue;

 for (queue = 0; queue < tx_queues_cnt; queue++)
  netif_tx_start_queue(netdev_get_tx_queue(priv->dev, queue));
}
