
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring_info {int dummy; } ;
typedef struct tx_ring_info rx_ring_info ;
struct niu {int num_rx_rings; int num_tx_rings; struct tx_ring_info* tx_rings; struct tx_ring_info* rx_rings; } ;


 int kfree (struct tx_ring_info*) ;
 int niu_free_rx_ring_info (struct niu*,struct tx_ring_info*) ;
 int niu_free_tx_ring_info (struct niu*,struct tx_ring_info*) ;

__attribute__((used)) static void niu_free_channels(struct niu *np)
{
 int i;

 if (np->rx_rings) {
  for (i = 0; i < np->num_rx_rings; i++) {
   struct rx_ring_info *rp = &np->rx_rings[i];

   niu_free_rx_ring_info(np, rp);
  }
  kfree(np->rx_rings);
  np->rx_rings = ((void*)0);
  np->num_rx_rings = 0;
 }

 if (np->tx_rings) {
  for (i = 0; i < np->num_tx_rings; i++) {
   struct tx_ring_info *rp = &np->tx_rings[i];

   niu_free_tx_ring_info(np, rp);
  }
  kfree(np->tx_rings);
  np->tx_rings = ((void*)0);
  np->num_tx_rings = 0;
 }
}
