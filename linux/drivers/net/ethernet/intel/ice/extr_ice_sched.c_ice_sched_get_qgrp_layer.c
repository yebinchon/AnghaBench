
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ice_hw {scalar_t__ num_tx_sched_layers; } ;


 scalar_t__ ICE_QGRP_LAYER_OFFSET ;

__attribute__((used)) static u8 ice_sched_get_qgrp_layer(struct ice_hw *hw)
{

 return hw->num_tx_sched_layers - ICE_QGRP_LAYER_OFFSET;
}
