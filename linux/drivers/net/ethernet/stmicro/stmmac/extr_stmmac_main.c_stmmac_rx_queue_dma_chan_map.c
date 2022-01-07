
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_priv {int hw; TYPE_2__* plat; } ;
struct TYPE_4__ {size_t rx_queues_to_use; TYPE_1__* rx_queues_cfg; } ;
struct TYPE_3__ {size_t chan; } ;


 int stmmac_map_mtl_to_dma (struct stmmac_priv*,int ,size_t,size_t) ;

__attribute__((used)) static void stmmac_rx_queue_dma_chan_map(struct stmmac_priv *priv)
{
 u32 rx_queues_count = priv->plat->rx_queues_to_use;
 u32 queue;
 u32 chan;

 for (queue = 0; queue < rx_queues_count; queue++) {
  chan = priv->plat->rx_queues_cfg[queue].chan;
  stmmac_map_mtl_to_dma(priv, priv->hw, queue, chan);
 }
}
