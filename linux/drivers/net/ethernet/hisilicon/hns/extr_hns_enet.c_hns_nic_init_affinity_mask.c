
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {int dummy; } ;
typedef int cpumask_t ;


 int cpumask_clear (int *) ;
 int cpumask_set_cpu (int,int *) ;
 scalar_t__ is_tx_ring (struct hnae_ring*) ;
 int num_possible_cpus () ;

__attribute__((used)) static int hns_nic_init_affinity_mask(int q_num, int ring_idx,
          struct hnae_ring *ring, cpumask_t *mask)
{
 int cpu;





 if (q_num == num_possible_cpus()) {
  if (is_tx_ring(ring))
   cpu = ring_idx;
  else
   cpu = ring_idx - q_num;
 } else {
  if (is_tx_ring(ring))
   cpu = ring_idx * 2;
  else
   cpu = (ring_idx - q_num) * 2 + 1;
 }

 cpumask_clear(mask);
 cpumask_set_cpu(cpu, mask);

 return cpu;
}
