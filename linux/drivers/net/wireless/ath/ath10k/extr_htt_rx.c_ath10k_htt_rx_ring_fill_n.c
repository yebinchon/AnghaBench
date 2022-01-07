
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct ath10k_htt {TYPE_1__ rx_ring; } ;


 int __ath10k_htt_rx_ring_fill_n (struct ath10k_htt*,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_htt_rx_ring_fill_n(struct ath10k_htt *htt, int num)
{
 lockdep_assert_held(&htt->rx_ring.lock);
 return __ath10k_htt_rx_ring_fill_n(htt, num);
}
