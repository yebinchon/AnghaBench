
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union enetc_rx_bd {int dummy; } enetc_rx_bd ;
struct enetc_bdr {int bd_count; int * rx_swbd; int * bd_base; int bd_dma_base; int dev; } ;


 int dma_free_coherent (int ,int,int *,int ) ;
 int vfree (int *) ;

__attribute__((used)) static void enetc_free_rxbdr(struct enetc_bdr *rxr)
{
 int size;

 size = rxr->bd_count * sizeof(union enetc_rx_bd);

 dma_free_coherent(rxr->dev, size, rxr->bd_base, rxr->bd_dma_base);
 rxr->bd_base = ((void*)0);

 vfree(rxr->rx_swbd);
 rxr->rx_swbd = ((void*)0);
}
