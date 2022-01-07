
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgmac {int * rx_ring; int * tx_ring; } ;


 int BGMAC_MAX_RX_RINGS ;
 int BGMAC_MAX_TX_RINGS ;
 int bgmac_dma_rx_ring_free (struct bgmac*,int *) ;
 int bgmac_dma_tx_ring_free (struct bgmac*,int *) ;

__attribute__((used)) static void bgmac_dma_cleanup(struct bgmac *bgmac)
{
 int i;

 for (i = 0; i < BGMAC_MAX_TX_RINGS; i++)
  bgmac_dma_tx_ring_free(bgmac, &bgmac->tx_ring[i]);

 for (i = 0; i < BGMAC_MAX_RX_RINGS; i++)
  bgmac_dma_rx_ring_free(bgmac, &bgmac->rx_ring[i]);
}
