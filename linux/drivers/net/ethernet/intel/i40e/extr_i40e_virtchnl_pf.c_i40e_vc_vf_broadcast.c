
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_vf {int vf_id; int vf_states; } ;
struct TYPE_2__ {scalar_t__ vf_base_id; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {int num_alloc_vfs; struct i40e_vf* vf; struct i40e_hw hw; } ;
typedef int i40e_status ;
typedef enum virtchnl_ops { ____Placeholder_virtchnl_ops } virtchnl_ops ;


 int I40E_VF_STATE_ACTIVE ;
 int I40E_VF_STATE_INIT ;
 int i40e_aq_send_msg_to_vf (struct i40e_hw*,int,int,int ,int *,int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void i40e_vc_vf_broadcast(struct i40e_pf *pf,
     enum virtchnl_ops v_opcode,
     i40e_status v_retval, u8 *msg,
     u16 msglen)
{
 struct i40e_hw *hw = &pf->hw;
 struct i40e_vf *vf = pf->vf;
 int i;

 for (i = 0; i < pf->num_alloc_vfs; i++, vf++) {
  int abs_vf_id = vf->vf_id + (int)hw->func_caps.vf_base_id;

  if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states) &&
      !test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states))
   continue;




  i40e_aq_send_msg_to_vf(hw, abs_vf_id, v_opcode, v_retval,
           msg, msglen, ((void*)0));
 }
}
