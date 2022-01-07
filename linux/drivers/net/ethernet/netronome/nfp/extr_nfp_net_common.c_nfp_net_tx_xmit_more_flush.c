
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_tx_ring {scalar_t__ wr_ptr_add; int qcp_q; } ;


 int nfp_qcp_wr_ptr_add (int ,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void nfp_net_tx_xmit_more_flush(struct nfp_net_tx_ring *tx_ring)
{
 wmb();
 nfp_qcp_wr_ptr_add(tx_ring->qcp_q, tx_ring->wr_ptr_add);
 tx_ring->wr_ptr_add = 0;
}
