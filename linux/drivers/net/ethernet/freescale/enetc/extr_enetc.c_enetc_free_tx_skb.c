
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_tx_swbd {int * skb; scalar_t__ dma; } ;
struct enetc_bdr {int dummy; } ;


 int dev_kfree_skb_any (int *) ;
 int enetc_unmap_tx_buff (struct enetc_bdr*,struct enetc_tx_swbd*) ;

__attribute__((used)) static void enetc_free_tx_skb(struct enetc_bdr *tx_ring,
         struct enetc_tx_swbd *tx_swbd)
{
 if (tx_swbd->dma)
  enetc_unmap_tx_buff(tx_ring, tx_swbd);

 if (tx_swbd->skb) {
  dev_kfree_skb_any(tx_swbd->skb);
  tx_swbd->skb = ((void*)0);
 }
}
