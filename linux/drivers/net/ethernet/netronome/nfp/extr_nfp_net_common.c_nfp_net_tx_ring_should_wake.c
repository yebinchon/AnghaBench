
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_tx_ring {int dummy; } ;


 int MAX_SKB_FRAGS ;
 int nfp_net_tx_full (struct nfp_net_tx_ring*,int) ;

__attribute__((used)) static int nfp_net_tx_ring_should_wake(struct nfp_net_tx_ring *tx_ring)
{
 return !nfp_net_tx_full(tx_ring, MAX_SKB_FRAGS * 4);
}
