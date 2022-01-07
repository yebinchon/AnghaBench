
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_rx_dma {void* rxd4; void* rxd3; void* rxd2; void* rxd1; } ;


 void* READ_ONCE (void*) ;

__attribute__((used)) static inline void mtk_rx_get_desc(struct mtk_rx_dma *rxd,
       struct mtk_rx_dma *dma_rxd)
{
 rxd->rxd1 = READ_ONCE(dma_rxd->rxd1);
 rxd->rxd2 = READ_ONCE(dma_rxd->rxd2);
 rxd->rxd3 = READ_ONCE(dma_rxd->rxd3);
 rxd->rxd4 = READ_ONCE(dma_rxd->rxd4);
}
