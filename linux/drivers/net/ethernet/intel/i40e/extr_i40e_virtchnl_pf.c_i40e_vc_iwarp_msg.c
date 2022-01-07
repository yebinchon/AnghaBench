
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_vf {int vf_id; int vf_states; struct i40e_pf* pf; } ;
struct TYPE_3__ {int vf_base_id; } ;
struct TYPE_4__ {TYPE_1__ func_caps; } ;
struct i40e_pf {size_t lan_vsi; int * vsi; TYPE_2__ hw; } ;
typedef int i40e_status ;


 int I40E_ERR_PARAM ;
 int I40E_VF_STATE_ACTIVE ;
 int I40E_VF_STATE_IWARPENA ;
 int VIRTCHNL_OP_IWARP ;
 int i40e_notify_client_of_vf_msg (int ,int,int *,int ) ;
 int i40e_vc_send_resp_to_vf (struct i40e_vf*,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_iwarp_msg(struct i40e_vf *vf, u8 *msg, u16 msglen)
{
 struct i40e_pf *pf = vf->pf;
 int abs_vf_id = vf->vf_id + pf->hw.func_caps.vf_base_id;
 i40e_status aq_ret = 0;

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
     !test_bit(I40E_VF_STATE_IWARPENA, &vf->vf_states)) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }

 i40e_notify_client_of_vf_msg(pf->vsi[pf->lan_vsi], abs_vf_id,
         msg, msglen);

error_param:

 return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_IWARP,
           aq_ret);
}
