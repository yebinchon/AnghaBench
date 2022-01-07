
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ice_vf {scalar_t__ num_inval_msgs; int vf_id; int num_valid_msgs; int vf_states; struct ice_pf* pf; } ;
struct TYPE_5__ {scalar_t__ sq_last_status; } ;
struct TYPE_6__ {TYPE_2__ mailboxq; } ;
struct ice_pf {TYPE_3__ hw; TYPE_1__* pdev; int num_alloc_vfs; } ;
typedef enum virtchnl_status_code { ____Placeholder_virtchnl_status_code } virtchnl_status_code ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ ICE_AQ_RC_ENOSYS ;
 scalar_t__ ICE_DFLT_NUM_INVAL_MSGS_ALLOWED ;
 int ICE_VF_STATE_DIS ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ,int,int) ;
 int ice_aq_send_msg_to_vf (TYPE_3__*,int ,int,int,int *,int ,int *) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int
ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
        enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
{
 enum ice_status aq_ret;
 struct ice_pf *pf;


 if (!vf || vf->vf_id >= vf->pf->num_alloc_vfs)
  return -EINVAL;

 pf = vf->pf;


 if (v_retval) {
  vf->num_inval_msgs++;
  dev_info(&pf->pdev->dev, "VF %d failed opcode %d, retval: %d\n",
    vf->vf_id, v_opcode, v_retval);
  if (vf->num_inval_msgs > ICE_DFLT_NUM_INVAL_MSGS_ALLOWED) {
   dev_err(&pf->pdev->dev,
    "Number of invalid messages exceeded for VF %d\n",
    vf->vf_id);
   dev_err(&pf->pdev->dev, "Use PF Control I/F to enable the VF\n");
   set_bit(ICE_VF_STATE_DIS, vf->vf_states);
   return -EIO;
  }
 } else {
  vf->num_valid_msgs++;

  vf->num_inval_msgs = 0;
 }

 aq_ret = ice_aq_send_msg_to_vf(&pf->hw, vf->vf_id, v_opcode, v_retval,
           msg, msglen, ((void*)0));
 if (aq_ret && pf->hw.mailboxq.sq_last_status != ICE_AQ_RC_ENOSYS) {
  dev_info(&pf->pdev->dev,
    "Unable to send the message to VF %d ret %d aq_err %d\n",
    vf->vf_id, aq_ret, pf->hw.mailboxq.sq_last_status);
  return -EIO;
 }

 return 0;
}
