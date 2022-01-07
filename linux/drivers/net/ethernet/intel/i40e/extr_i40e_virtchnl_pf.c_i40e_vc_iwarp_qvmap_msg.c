
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtchnl_iwarp_qvlist_info {int dummy; } ;
struct i40e_vf {int vf_states; } ;
typedef int i40e_status ;


 int I40E_ERR_PARAM ;
 int I40E_VF_STATE_ACTIVE ;
 int I40E_VF_STATE_IWARPENA ;
 int VIRTCHNL_OP_CONFIG_IWARP_IRQ_MAP ;
 int VIRTCHNL_OP_RELEASE_IWARP_IRQ_MAP ;
 scalar_t__ i40e_config_iwarp_qvlist (struct i40e_vf*,struct virtchnl_iwarp_qvlist_info*) ;
 int i40e_release_iwarp_qvlist (struct i40e_vf*) ;
 int i40e_vc_send_resp_to_vf (struct i40e_vf*,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_iwarp_qvmap_msg(struct i40e_vf *vf, u8 *msg, bool config)
{
 struct virtchnl_iwarp_qvlist_info *qvlist_info =
    (struct virtchnl_iwarp_qvlist_info *)msg;
 i40e_status aq_ret = 0;

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
     !test_bit(I40E_VF_STATE_IWARPENA, &vf->vf_states)) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }

 if (config) {
  if (i40e_config_iwarp_qvlist(vf, qvlist_info))
   aq_ret = I40E_ERR_PARAM;
 } else {
  i40e_release_iwarp_qvlist(vf);
 }

error_param:

 return i40e_vc_send_resp_to_vf(vf,
          config ? VIRTCHNL_OP_CONFIG_IWARP_IRQ_MAP :
          VIRTCHNL_OP_RELEASE_IWARP_IRQ_MAP,
          aq_ret);
}
