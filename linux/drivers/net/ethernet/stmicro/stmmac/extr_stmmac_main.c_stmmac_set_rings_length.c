
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stmmac_priv {int ioaddr; TYPE_1__* plat; } ;
struct TYPE_2__ {scalar_t__ rx_queues_to_use; scalar_t__ tx_queues_to_use; } ;


 scalar_t__ DMA_RX_SIZE ;
 scalar_t__ DMA_TX_SIZE ;
 int stmmac_set_rx_ring_len (struct stmmac_priv*,int ,scalar_t__,scalar_t__) ;
 int stmmac_set_tx_ring_len (struct stmmac_priv*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void stmmac_set_rings_length(struct stmmac_priv *priv)
{
 u32 rx_channels_count = priv->plat->rx_queues_to_use;
 u32 tx_channels_count = priv->plat->tx_queues_to_use;
 u32 chan;


 for (chan = 0; chan < tx_channels_count; chan++)
  stmmac_set_tx_ring_len(priv, priv->ioaddr,
    (DMA_TX_SIZE - 1), chan);


 for (chan = 0; chan < rx_channels_count; chan++)
  stmmac_set_rx_ring_len(priv, priv->ioaddr,
    (DMA_RX_SIZE - 1), chan);
}
