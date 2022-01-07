
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_8__ {int rx_fifo_size; int tx_fifo_size; } ;
struct stmmac_priv {int ioaddr; TYPE_4__ dma_cap; TYPE_3__* plat; } ;
struct TYPE_7__ {size_t rx_queues_to_use; size_t tx_queues_to_use; int rx_fifo_size; int tx_fifo_size; TYPE_2__* tx_queues_cfg; TYPE_1__* rx_queues_cfg; } ;
struct TYPE_6__ {int mode_to_use; } ;
struct TYPE_5__ {int mode_to_use; } ;


 int stmmac_dma_rx_mode (struct stmmac_priv*,int ,size_t,size_t,int,int ) ;
 int stmmac_dma_tx_mode (struct stmmac_priv*,int ,size_t,size_t,int,int ) ;

__attribute__((used)) static void stmmac_set_dma_operation_mode(struct stmmac_priv *priv, u32 txmode,
       u32 rxmode, u32 chan)
{
 u8 rxqmode = priv->plat->rx_queues_cfg[chan].mode_to_use;
 u8 txqmode = priv->plat->tx_queues_cfg[chan].mode_to_use;
 u32 rx_channels_count = priv->plat->rx_queues_to_use;
 u32 tx_channels_count = priv->plat->tx_queues_to_use;
 int rxfifosz = priv->plat->rx_fifo_size;
 int txfifosz = priv->plat->tx_fifo_size;

 if (rxfifosz == 0)
  rxfifosz = priv->dma_cap.rx_fifo_size;
 if (txfifosz == 0)
  txfifosz = priv->dma_cap.tx_fifo_size;


 rxfifosz /= rx_channels_count;
 txfifosz /= tx_channels_count;

 stmmac_dma_rx_mode(priv, priv->ioaddr, rxmode, chan, rxfifosz, rxqmode);
 stmmac_dma_tx_mode(priv, priv->ioaddr, txmode, chan, txfifosz, txqmode);
}
