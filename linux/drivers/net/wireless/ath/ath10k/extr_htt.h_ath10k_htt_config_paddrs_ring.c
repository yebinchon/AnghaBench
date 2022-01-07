
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_htt {TYPE_1__* rx_ops; } ;
struct TYPE_2__ {int (* htt_config_paddrs_ring ) (struct ath10k_htt*,void*) ;} ;


 int stub1 (struct ath10k_htt*,void*) ;

__attribute__((used)) static inline void ath10k_htt_config_paddrs_ring(struct ath10k_htt *htt,
       void *vaddr)
{
 if (htt->rx_ops->htt_config_paddrs_ring)
  htt->rx_ops->htt_config_paddrs_ring(htt, vaddr);
}
