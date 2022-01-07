
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_priv {struct stmmac_channel* channel; TYPE_1__* plat; } ;
struct stmmac_channel {int tx_napi; int rx_napi; } ;
struct TYPE_2__ {size_t rx_queues_to_use; size_t tx_queues_to_use; } ;


 size_t max (size_t,size_t) ;
 int napi_disable (int *) ;

__attribute__((used)) static void stmmac_disable_all_queues(struct stmmac_priv *priv)
{
 u32 rx_queues_cnt = priv->plat->rx_queues_to_use;
 u32 tx_queues_cnt = priv->plat->tx_queues_to_use;
 u32 maxq = max(rx_queues_cnt, tx_queues_cnt);
 u32 queue;

 for (queue = 0; queue < maxq; queue++) {
  struct stmmac_channel *ch = &priv->channel[queue];

  if (queue < rx_queues_cnt)
   napi_disable(&ch->rx_napi);
  if (queue < tx_queues_cnt)
   napi_disable(&ch->tx_napi);
 }
}
