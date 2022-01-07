
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_tx_ring {int wr_p; int rd_p; int cnt; } ;



__attribute__((used)) static int nfp_net_tx_full(struct nfp_net_tx_ring *tx_ring, int dcnt)
{
 return (tx_ring->wr_p - tx_ring->rd_p) >= (tx_ring->cnt - dcnt);
}
