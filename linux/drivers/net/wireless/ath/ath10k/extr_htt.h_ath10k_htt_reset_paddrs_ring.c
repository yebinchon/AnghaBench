
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_htt {TYPE_1__* rx_ops; } ;
struct TYPE_2__ {int (* htt_reset_paddrs_ring ) (struct ath10k_htt*,int) ;} ;


 int stub1 (struct ath10k_htt*,int) ;

__attribute__((used)) static inline void ath10k_htt_reset_paddrs_ring(struct ath10k_htt *htt, int idx)
{
 if (htt->rx_ops->htt_reset_paddrs_ring)
  htt->rx_ops->htt_reset_paddrs_ring(htt, idx);
}
