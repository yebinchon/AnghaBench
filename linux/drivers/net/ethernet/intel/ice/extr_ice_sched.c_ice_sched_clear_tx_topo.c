
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_port_info {int * root; } ;


 int ice_free_sched_node (struct ice_port_info*,int *) ;

__attribute__((used)) static void ice_sched_clear_tx_topo(struct ice_port_info *pi)
{
 if (!pi)
  return;
 if (pi->root) {
  ice_free_sched_node(pi, pi->root);
  pi->root = ((void*)0);
 }
}
