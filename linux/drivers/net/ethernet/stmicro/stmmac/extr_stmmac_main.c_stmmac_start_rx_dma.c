
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmmac_priv {int ioaddr; int dev; } ;


 int netdev_dbg (int ,char*,int ) ;
 int stmmac_start_rx (struct stmmac_priv*,int ,int ) ;

__attribute__((used)) static void stmmac_start_rx_dma(struct stmmac_priv *priv, u32 chan)
{
 netdev_dbg(priv->dev, "DMA RX processes started in channel %d\n", chan);
 stmmac_start_rx(priv, priv->ioaddr, chan);
}
