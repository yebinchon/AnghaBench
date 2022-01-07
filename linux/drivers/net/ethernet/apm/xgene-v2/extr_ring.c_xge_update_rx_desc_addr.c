
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {struct xge_desc_ring* rx_ring; } ;
struct xge_desc_ring {scalar_t__ tail; scalar_t__ head; int dma_addr; } ;
typedef int dma_addr_t ;


 int DMARXDESCH ;
 int DMARXDESCL ;
 int upper_32_bits (int ) ;
 int xge_wr_csr (struct xge_pdata*,int ,int ) ;

void xge_update_rx_desc_addr(struct xge_pdata *pdata)
{
 struct xge_desc_ring *ring = pdata->rx_ring;
 dma_addr_t dma_addr = ring->dma_addr;

 xge_wr_csr(pdata, DMARXDESCL, dma_addr);
 xge_wr_csr(pdata, DMARXDESCH, upper_32_bits(dma_addr));

 ring->head = 0;
 ring->tail = 0;
}
