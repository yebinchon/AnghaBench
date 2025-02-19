
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168_eth_private {int tx_curr_desc_q; int tx_ring_size; int tx_used_desc_q; int tx_desc_count; } ;


 int BUG_ON (int) ;

__attribute__((used)) static int eth_alloc_tx_desc_index(struct pxa168_eth_private *pep)
{
 int tx_desc_curr;

 tx_desc_curr = pep->tx_curr_desc_q;
 pep->tx_curr_desc_q = (tx_desc_curr + 1) % pep->tx_ring_size;
 BUG_ON(pep->tx_curr_desc_q == pep->tx_used_desc_q);
 pep->tx_desc_count++;

 return tx_desc_curr;
}
