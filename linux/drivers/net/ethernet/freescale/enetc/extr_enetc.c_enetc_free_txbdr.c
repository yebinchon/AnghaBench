
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union enetc_tx_bd {int dummy; } enetc_tx_bd ;
struct enetc_bdr {int bd_count; int * tx_swbd; int * bd_base; int bd_dma_base; int dev; } ;


 int dma_free_coherent (int ,int,int *,int ) ;
 int enetc_free_tx_skb (struct enetc_bdr*,int *) ;
 int vfree (int *) ;

__attribute__((used)) static void enetc_free_txbdr(struct enetc_bdr *txr)
{
 int size, i;

 for (i = 0; i < txr->bd_count; i++)
  enetc_free_tx_skb(txr, &txr->tx_swbd[i]);

 size = txr->bd_count * sizeof(union enetc_tx_bd);

 dma_free_coherent(txr->dev, size, txr->bd_base, txr->bd_dma_base);
 txr->bd_base = ((void*)0);

 vfree(txr->tx_swbd);
 txr->tx_swbd = ((void*)0);
}
