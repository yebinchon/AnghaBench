
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtchnl_version_info {int minor; int member_1; int member_0; } ;
struct i40e_vf {struct virtchnl_version_info vf_ver; } ;


 int I40E_SUCCESS ;
 scalar_t__ VF_IS_V10 (struct virtchnl_version_info*) ;
 int VIRTCHNL_OP_VERSION ;
 int VIRTCHNL_VERSION_MAJOR ;
 int VIRTCHNL_VERSION_MINOR ;
 int VIRTCHNL_VERSION_MINOR_NO_VF_CAPS ;
 int i40e_vc_send_msg_to_vf (struct i40e_vf*,int ,int ,int *,int) ;

__attribute__((used)) static int i40e_vc_get_version_msg(struct i40e_vf *vf, u8 *msg)
{
 struct virtchnl_version_info info = {
  VIRTCHNL_VERSION_MAJOR, VIRTCHNL_VERSION_MINOR
 };

 vf->vf_ver = *(struct virtchnl_version_info *)msg;

 if (VF_IS_V10(&vf->vf_ver))
  info.minor = VIRTCHNL_VERSION_MINOR_NO_VF_CAPS;
 return i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_VERSION,
          I40E_SUCCESS, (u8 *)&info,
          sizeof(struct virtchnl_version_info));
}
