
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {TYPE_1__* plat; int hw; } ;
struct TYPE_2__ {int rx_queues_to_use; int tx_queues_to_use; int tx_sched_algorithm; int rx_sched_algorithm; } ;


 int stmmac_configure_cbs (struct stmmac_priv*) ;
 int stmmac_mac_config_rss (struct stmmac_priv*) ;
 int stmmac_mac_config_rx_queues_prio (struct stmmac_priv*) ;
 int stmmac_mac_config_rx_queues_routing (struct stmmac_priv*) ;
 int stmmac_mac_config_tx_queues_prio (struct stmmac_priv*) ;
 int stmmac_mac_enable_rx_queues (struct stmmac_priv*) ;
 int stmmac_prog_mtl_rx_algorithms (struct stmmac_priv*,int ,int ) ;
 int stmmac_prog_mtl_tx_algorithms (struct stmmac_priv*,int ,int ) ;
 int stmmac_rx_queue_dma_chan_map (struct stmmac_priv*) ;
 int stmmac_set_tx_queue_weight (struct stmmac_priv*) ;

__attribute__((used)) static void stmmac_mtl_configuration(struct stmmac_priv *priv)
{
 u32 rx_queues_count = priv->plat->rx_queues_to_use;
 u32 tx_queues_count = priv->plat->tx_queues_to_use;

 if (tx_queues_count > 1)
  stmmac_set_tx_queue_weight(priv);


 if (rx_queues_count > 1)
  stmmac_prog_mtl_rx_algorithms(priv, priv->hw,
    priv->plat->rx_sched_algorithm);


 if (tx_queues_count > 1)
  stmmac_prog_mtl_tx_algorithms(priv, priv->hw,
    priv->plat->tx_sched_algorithm);


 if (tx_queues_count > 1)
  stmmac_configure_cbs(priv);


 stmmac_rx_queue_dma_chan_map(priv);


 stmmac_mac_enable_rx_queues(priv);


 if (rx_queues_count > 1)
  stmmac_mac_config_rx_queues_prio(priv);


 if (tx_queues_count > 1)
  stmmac_mac_config_tx_queues_prio(priv);


 if (rx_queues_count > 1)
  stmmac_mac_config_rx_queues_routing(priv);


 if (rx_queues_count > 1)
  stmmac_mac_config_rss(priv);
}
