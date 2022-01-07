
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
struct i40e_vf {int vf_id; scalar_t__ num_invalid_msgs; int num_valid_msgs; int vf_states; struct i40e_pf* pf; } ;
struct TYPE_6__ {int asq_last_status; } ;
struct TYPE_4__ {int vf_base_id; } ;
struct i40e_hw {TYPE_3__ aq; TYPE_1__ func_caps; } ;
struct i40e_pf {int num_alloc_vfs; struct i40e_hw hw; TYPE_2__* pdev; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_5__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ I40E_DEFAULT_NUM_INVALID_MSGS_ALLOWED ;
 int I40E_VF_STATE_DISABLED ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,int ,...) ;
 scalar_t__ i40e_aq_send_msg_to_vf (struct i40e_hw*,int,int ,int ,int *,int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_send_msg_to_vf(struct i40e_vf *vf, u32 v_opcode,
      u32 v_retval, u8 *msg, u16 msglen)
{
 struct i40e_pf *pf;
 struct i40e_hw *hw;
 int abs_vf_id;
 i40e_status aq_ret;


 if (!vf || vf->vf_id >= vf->pf->num_alloc_vfs)
  return -EINVAL;

 pf = vf->pf;
 hw = &pf->hw;
 abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;


 if (v_retval) {
  vf->num_invalid_msgs++;
  dev_info(&pf->pdev->dev, "VF %d failed opcode %d, retval: %d\n",
    vf->vf_id, v_opcode, v_retval);
  if (vf->num_invalid_msgs >
      I40E_DEFAULT_NUM_INVALID_MSGS_ALLOWED) {
   dev_err(&pf->pdev->dev,
    "Number of invalid messages exceeded for VF %d\n",
    vf->vf_id);
   dev_err(&pf->pdev->dev, "Use PF Control I/F to enable the VF\n");
   set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
  }
 } else {
  vf->num_valid_msgs++;

  vf->num_invalid_msgs = 0;
 }

 aq_ret = i40e_aq_send_msg_to_vf(hw, abs_vf_id, v_opcode, v_retval,
     msg, msglen, ((void*)0));
 if (aq_ret) {
  dev_info(&pf->pdev->dev,
    "Unable to send the message to VF %d aq_err %d\n",
    vf->vf_id, pf->hw.aq.asq_last_status);
  return -EIO;
 }

 return 0;
}
