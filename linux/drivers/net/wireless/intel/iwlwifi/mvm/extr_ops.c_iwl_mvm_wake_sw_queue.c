
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_op_mode {int dummy; } ;


 int iwl_mvm_queue_state_change (struct iwl_op_mode*,int,int) ;

__attribute__((used)) static void iwl_mvm_wake_sw_queue(struct iwl_op_mode *op_mode, int hw_queue)
{
 iwl_mvm_queue_state_change(op_mode, hw_queue, 1);
}
