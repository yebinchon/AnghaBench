
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int mailboxq; int adminq; } ;


 int ice_destroy_ctrlq_locks (int *) ;
 int ice_shutdown_all_ctrlq (struct ice_hw*) ;

void ice_destroy_all_ctrlq(struct ice_hw *hw)
{

 ice_shutdown_all_ctrlq(hw);

 ice_destroy_ctrlq_locks(&hw->adminq);
 ice_destroy_ctrlq_locks(&hw->mailboxq);
}
