
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int dummy; } ;


 int ICE_CTL_Q_ADMIN ;
 int ICE_CTL_Q_MAILBOX ;
 int ice_shutdown_ctrlq (struct ice_hw*,int ) ;

void ice_shutdown_all_ctrlq(struct ice_hw *hw)
{

 ice_shutdown_ctrlq(hw, ICE_CTL_Q_ADMIN);

 ice_shutdown_ctrlq(hw, ICE_CTL_Q_MAILBOX);
}
