
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_ring {int l2_accel; } ;
struct fm10k_l2_accel {int dummy; } ;
struct fm10k_intfc {int num_rx_queues; struct fm10k_l2_accel* l2_accel; struct fm10k_ring** rx_ring; } ;


 int rcu_assign_pointer (int ,struct fm10k_l2_accel*) ;

__attribute__((used)) static void fm10k_assign_l2_accel(struct fm10k_intfc *interface,
      struct fm10k_l2_accel *l2_accel)
{
 int i;

 for (i = 0; i < interface->num_rx_queues; i++) {
  struct fm10k_ring *ring = interface->rx_ring[i];

  rcu_assign_pointer(ring->l2_accel, l2_accel);
 }

 interface->l2_accel = l2_accel;
}
