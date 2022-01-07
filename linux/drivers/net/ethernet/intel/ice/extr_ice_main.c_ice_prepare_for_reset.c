
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {scalar_t__ port_info; int mailboxq; } ;
struct ice_pf {int num_alloc_vfs; int state; int * vf; struct ice_hw hw; } ;


 int __ICE_PREPARED_FOR_RESET ;
 scalar_t__ ice_check_sq_alive (struct ice_hw*,int *) ;
 int ice_clear_hw_tbls (struct ice_hw*) ;
 int ice_pf_dis_all_vsi (struct ice_pf*,int) ;
 int ice_sched_clear_port (scalar_t__) ;
 int ice_set_vf_state_qs_dis (int *) ;
 int ice_shutdown_all_ctrlq (struct ice_hw*) ;
 int ice_vc_notify_reset (struct ice_pf*) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void
ice_prepare_for_reset(struct ice_pf *pf)
{
 struct ice_hw *hw = &pf->hw;
 int i;


 if (test_bit(__ICE_PREPARED_FOR_RESET, pf->state))
  return;


 if (ice_check_sq_alive(hw, &hw->mailboxq))
  ice_vc_notify_reset(pf);


 for (i = 0; i < pf->num_alloc_vfs; i++)
  ice_set_vf_state_qs_dis(&pf->vf[i]);


 ice_clear_hw_tbls(hw);

 ice_pf_dis_all_vsi(pf, 0);

 if (hw->port_info)
  ice_sched_clear_port(hw->port_info);

 ice_shutdown_all_ctrlq(hw);

 set_bit(__ICE_PREPARED_FOR_RESET, pf->state);
}
