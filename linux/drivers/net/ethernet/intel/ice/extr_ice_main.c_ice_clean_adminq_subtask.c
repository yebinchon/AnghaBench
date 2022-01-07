
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int adminq; } ;
struct ice_pf {int state; struct ice_hw hw; } ;


 int ICE_CTL_Q_ADMIN ;
 int __ICE_ADMINQ_EVENT_PENDING ;
 scalar_t__ __ice_clean_ctrlq (struct ice_pf*,int ) ;
 int clear_bit (int ,int ) ;
 scalar_t__ ice_ctrlq_pending (struct ice_hw*,int *) ;
 int ice_flush (struct ice_hw*) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void ice_clean_adminq_subtask(struct ice_pf *pf)
{
 struct ice_hw *hw = &pf->hw;

 if (!test_bit(__ICE_ADMINQ_EVENT_PENDING, pf->state))
  return;

 if (__ice_clean_ctrlq(pf, ICE_CTL_Q_ADMIN))
  return;

 clear_bit(__ICE_ADMINQ_EVENT_PENDING, pf->state);






 if (ice_ctrlq_pending(hw, &hw->adminq))
  __ice_clean_ctrlq(pf, ICE_CTL_Q_ADMIN);

 ice_flush(hw);
}
