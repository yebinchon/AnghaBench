
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_tx_swbd {int dummy; } ;
struct enetc_bdr {int bd_count; scalar_t__ next_to_use; scalar_t__ next_to_clean; struct enetc_tx_swbd* tx_swbd; } ;


 int enetc_free_tx_skb (struct enetc_bdr*,struct enetc_tx_swbd*) ;

__attribute__((used)) static void enetc_free_tx_ring(struct enetc_bdr *tx_ring)
{
 int i;

 if (!tx_ring->tx_swbd)
  return;

 for (i = 0; i < tx_ring->bd_count; i++) {
  struct enetc_tx_swbd *tx_swbd = &tx_ring->tx_swbd[i];

  enetc_free_tx_skb(tx_ring, tx_swbd);
 }

 tx_ring->next_to_clean = 0;
 tx_ring->next_to_use = 0;
}
