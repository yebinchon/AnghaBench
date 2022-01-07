
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
struct TYPE_3__ {int count; } ;
struct fm10k_q_vector {int itr; TYPE_2__ rx; TYPE_1__ tx; } ;
struct fm10k_intfc {int num_tx_queues; int num_q_vectors; struct fm10k_q_vector** q_vector; int * tx_ring; int netdev; scalar_t__ next_tx_hang_check; int state; } ;


 int FM10K_ITR_ENABLE ;
 int FM10K_ITR_PENDING2 ;
 int HZ ;
 int __FM10K_DOWN ;
 int __FM10K_RESETTING ;
 scalar_t__ jiffies ;
 scalar_t__ netif_carrier_ok (int ) ;
 int set_check_for_tx_hang (int ) ;
 scalar_t__ test_bit (int ,int ) ;
 scalar_t__ time_is_after_eq_jiffies (scalar_t__) ;
 int writel (int,int ) ;

__attribute__((used)) static void fm10k_check_hang_subtask(struct fm10k_intfc *interface)
{

 if (test_bit(__FM10K_DOWN, interface->state) ||
     test_bit(__FM10K_RESETTING, interface->state))
  return;


 if (time_is_after_eq_jiffies(interface->next_tx_hang_check))
  return;
 interface->next_tx_hang_check = jiffies + (2 * HZ);

 if (netif_carrier_ok(interface->netdev)) {
  int i;


  for (i = 0; i < interface->num_tx_queues; i++)
   set_check_for_tx_hang(interface->tx_ring[i]);


  for (i = 0; i < interface->num_q_vectors; i++) {
   struct fm10k_q_vector *qv = interface->q_vector[i];

   if (!qv->tx.count && !qv->rx.count)
    continue;
   writel(FM10K_ITR_ENABLE | FM10K_ITR_PENDING2, qv->itr);
  }
 }
}
