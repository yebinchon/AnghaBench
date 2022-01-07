
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_ring {int queue_index; int netdev; TYPE_1__* q_vector; int state; scalar_t__ ch; } ;
struct TYPE_2__ {int v_idx; } ;


 int __I40E_TX_XPS_INIT_DONE ;
 int cpumask_local_spread (int ,int) ;
 int get_cpu_mask (int) ;
 int netif_set_xps_queue (int ,int ,int ) ;
 scalar_t__ test_and_set_bit (int ,int ) ;

__attribute__((used)) static void i40e_config_xps_tx_ring(struct i40e_ring *ring)
{
 int cpu;

 if (!ring->q_vector || !ring->netdev || ring->ch)
  return;


 if (test_and_set_bit(__I40E_TX_XPS_INIT_DONE, ring->state))
  return;

 cpu = cpumask_local_spread(ring->q_vector->v_idx, -1);
 netif_set_xps_queue(ring->netdev, get_cpu_mask(cpu),
       ring->queue_index);
}
