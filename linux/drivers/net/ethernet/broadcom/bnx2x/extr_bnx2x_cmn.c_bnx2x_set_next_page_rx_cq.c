
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_rx_cqe_next_page {void* addr_lo; void* addr_hi; } ;
struct bnx2x_fastpath {scalar_t__ rx_comp_mapping; int * rx_comp_ring; } ;


 int BCM_PAGE_SIZE ;
 int NUM_RCQ_RINGS ;
 int RCQ_DESC_CNT ;
 int U64_HI (scalar_t__) ;
 int U64_LO (scalar_t__) ;
 void* cpu_to_le32 (int ) ;

__attribute__((used)) static void bnx2x_set_next_page_rx_cq(struct bnx2x_fastpath *fp)
{
 int i;

 for (i = 1; i <= NUM_RCQ_RINGS; i++) {
  struct eth_rx_cqe_next_page *nextpg;

  nextpg = (struct eth_rx_cqe_next_page *)
   &fp->rx_comp_ring[RCQ_DESC_CNT * i - 1];
  nextpg->addr_hi =
   cpu_to_le32(U64_HI(fp->rx_comp_mapping +
       BCM_PAGE_SIZE*(i % NUM_RCQ_RINGS)));
  nextpg->addr_lo =
   cpu_to_le32(U64_LO(fp->rx_comp_mapping +
       BCM_PAGE_SIZE*(i % NUM_RCQ_RINGS)));
 }
}
