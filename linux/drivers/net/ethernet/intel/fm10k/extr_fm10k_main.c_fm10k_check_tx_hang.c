
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ tx_done_old; } ;
struct fm10k_ring {int state; TYPE_1__ tx_stats; } ;


 int __FM10K_HANG_CHECK_ARMED ;
 int clear_bit (int ,int ) ;
 int clear_check_for_tx_hang (struct fm10k_ring*) ;
 scalar_t__ fm10k_get_tx_completed (struct fm10k_ring*) ;
 scalar_t__ fm10k_get_tx_pending (struct fm10k_ring*,int) ;
 int test_and_set_bit (int ,int ) ;

bool fm10k_check_tx_hang(struct fm10k_ring *tx_ring)
{
 u32 tx_done = fm10k_get_tx_completed(tx_ring);
 u32 tx_done_old = tx_ring->tx_stats.tx_done_old;
 u32 tx_pending = fm10k_get_tx_pending(tx_ring, 1);

 clear_check_for_tx_hang(tx_ring);
 if (!tx_pending || (tx_done_old != tx_done)) {

  tx_ring->tx_stats.tx_done_old = tx_done;

  clear_bit(__FM10K_HANG_CHECK_ARMED, tx_ring->state);

  return 0;
 }


 return test_and_set_bit(__FM10K_HANG_CHECK_ARMED, tx_ring->state);
}
