
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ice_vf {int vf_id; int vf_states; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {int num_alloc_vfs; struct ice_vf* vf; struct ice_hw hw; } ;
typedef enum virtchnl_status_code { ____Placeholder_virtchnl_status_code } virtchnl_status_code ;
typedef enum virtchnl_ops { ____Placeholder_virtchnl_ops } virtchnl_ops ;


 int ICE_VF_STATE_ACTIVE ;
 int ICE_VF_STATE_INIT ;
 int ice_aq_send_msg_to_vf (struct ice_hw*,int ,int,int,int *,int ,int *) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void
ice_vc_vf_broadcast(struct ice_pf *pf, enum virtchnl_ops v_opcode,
      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
{
 struct ice_hw *hw = &pf->hw;
 struct ice_vf *vf = pf->vf;
 int i;

 for (i = 0; i < pf->num_alloc_vfs; i++, vf++) {

  if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states) &&
      !test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
   continue;




  ice_aq_send_msg_to_vf(hw, vf->vf_id, v_opcode, v_retval, msg,
          msglen, ((void*)0));
 }
}
