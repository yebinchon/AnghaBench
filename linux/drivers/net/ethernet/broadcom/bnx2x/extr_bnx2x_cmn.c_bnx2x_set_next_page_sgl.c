
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_rx_sge {void* addr_lo; void* addr_hi; } ;
struct bnx2x_fastpath {scalar_t__ rx_sge_mapping; struct eth_rx_sge* rx_sge_ring; } ;


 int BCM_PAGE_SIZE ;
 int NUM_RX_SGE_PAGES ;
 int RX_SGE_CNT ;
 int U64_HI (scalar_t__) ;
 int U64_LO (scalar_t__) ;
 void* cpu_to_le32 (int ) ;

__attribute__((used)) static void bnx2x_set_next_page_sgl(struct bnx2x_fastpath *fp)
{
 int i;

 for (i = 1; i <= NUM_RX_SGE_PAGES; i++) {
  struct eth_rx_sge *sge;

  sge = &fp->rx_sge_ring[RX_SGE_CNT * i - 2];
  sge->addr_hi =
   cpu_to_le32(U64_HI(fp->rx_sge_mapping +
   BCM_PAGE_SIZE*(i % NUM_RX_SGE_PAGES)));

  sge->addr_lo =
   cpu_to_le32(U64_LO(fp->rx_sge_mapping +
   BCM_PAGE_SIZE*(i % NUM_RX_SGE_PAGES)));
 }
}
