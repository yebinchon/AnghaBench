
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int mailboxq; int adminq; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_init_all_ctrlq (struct ice_hw*) ;
 int ice_init_ctrlq_locks (int *) ;

enum ice_status ice_create_all_ctrlq(struct ice_hw *hw)
{
 ice_init_ctrlq_locks(&hw->adminq);
 ice_init_ctrlq_locks(&hw->mailboxq);

 return ice_init_all_ctrlq(hw);
}
