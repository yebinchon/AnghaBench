
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_htt {TYPE_1__* rx_ops; } ;
struct TYPE_2__ {size_t (* htt_get_rx_ring_size ) (struct ath10k_htt*) ;} ;


 size_t stub1 (struct ath10k_htt*) ;

__attribute__((used)) static inline size_t ath10k_htt_get_rx_ring_size(struct ath10k_htt *htt)
{
 if (!htt->rx_ops->htt_get_rx_ring_size)
  return 0;

 return htt->rx_ops->htt_get_rx_ring_size(htt);
}
