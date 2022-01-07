
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ tx_done_old; } ;
struct ixgbevf_ring {TYPE_1__ tx_stats; int state; } ;


 int __IXGBEVF_HANG_CHECK_ARMED ;
 int clear_bit (int ,int *) ;
 int clear_check_for_tx_hang (struct ixgbevf_ring*) ;
 scalar_t__ ixgbevf_get_tx_completed (struct ixgbevf_ring*) ;
 scalar_t__ ixgbevf_get_tx_pending (struct ixgbevf_ring*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline bool ixgbevf_check_tx_hang(struct ixgbevf_ring *tx_ring)
{
 u32 tx_done = ixgbevf_get_tx_completed(tx_ring);
 u32 tx_done_old = tx_ring->tx_stats.tx_done_old;
 u32 tx_pending = ixgbevf_get_tx_pending(tx_ring);

 clear_check_for_tx_hang(tx_ring);






 if ((tx_done_old == tx_done) && tx_pending) {

  return test_and_set_bit(__IXGBEVF_HANG_CHECK_ARMED,
     &tx_ring->state);
 }

 clear_bit(__IXGBEVF_HANG_CHECK_ARMED, &tx_ring->state);


 tx_ring->tx_stats.tx_done_old = tx_done;

 return 0;
}
