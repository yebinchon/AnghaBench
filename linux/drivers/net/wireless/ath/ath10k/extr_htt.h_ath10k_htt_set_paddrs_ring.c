
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_htt {TYPE_1__* rx_ops; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* htt_set_paddrs_ring ) (struct ath10k_htt*,int ,int) ;} ;


 int stub1 (struct ath10k_htt*,int ,int) ;

__attribute__((used)) static inline void ath10k_htt_set_paddrs_ring(struct ath10k_htt *htt,
           dma_addr_t paddr,
           int idx)
{
 if (htt->rx_ops->htt_set_paddrs_ring)
  htt->rx_ops->htt_set_paddrs_ring(htt, paddr, idx);
}
