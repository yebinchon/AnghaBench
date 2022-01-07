
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {scalar_t__ max_cgds; scalar_t__ flattened_layers; scalar_t__ num_tx_sched_phys_layers; scalar_t__ num_tx_sched_layers; scalar_t__ port_info; int * layer_info; } ;


 int devm_kfree (int ,int *) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 int ice_sched_clear_port (scalar_t__) ;

void ice_sched_cleanup_all(struct ice_hw *hw)
{
 if (!hw)
  return;

 if (hw->layer_info) {
  devm_kfree(ice_hw_to_dev(hw), hw->layer_info);
  hw->layer_info = ((void*)0);
 }

 if (hw->port_info)
  ice_sched_clear_port(hw->port_info);

 hw->num_tx_sched_layers = 0;
 hw->num_tx_sched_phys_layers = 0;
 hw->flattened_layers = 0;
 hw->max_cgds = 0;
}
