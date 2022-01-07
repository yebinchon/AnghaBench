
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * paddrs_ring_32; } ;
struct ath10k_htt {TYPE_1__ rx_ring; } ;
typedef int dma_addr_t ;


 int __cpu_to_le32 (int ) ;

__attribute__((used)) static void ath10k_htt_set_paddrs_ring_32(struct ath10k_htt *htt,
       dma_addr_t paddr, int idx)
{
 htt->rx_ring.paddrs_ring_32[idx] = __cpu_to_le32(paddr);
}
