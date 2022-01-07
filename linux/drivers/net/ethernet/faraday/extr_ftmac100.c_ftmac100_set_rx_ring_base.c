
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100 {scalar_t__ base; } ;
typedef int dma_addr_t ;


 scalar_t__ FTMAC100_OFFSET_RXR_BADR ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void ftmac100_set_rx_ring_base(struct ftmac100 *priv, dma_addr_t addr)
{
 iowrite32(addr, priv->base + FTMAC100_OFFSET_RXR_BADR);
}
