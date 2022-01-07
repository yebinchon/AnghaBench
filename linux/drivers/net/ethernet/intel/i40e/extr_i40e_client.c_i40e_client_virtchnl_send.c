
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int asq_last_status; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct i40e_pf {TYPE_2__* pdev; struct i40e_hw hw; } ;
struct i40e_info {struct i40e_pf* pf; } ;
struct i40e_client {int dummy; } ;
typedef int i40e_status ;
struct TYPE_4__ {int dev; } ;


 int VIRTCHNL_OP_IWARP ;
 int dev_err (int *,char*,int,int ) ;
 int i40e_aq_send_msg_to_vf (struct i40e_hw*,int ,int ,int ,int *,int ,int *) ;

__attribute__((used)) static int i40e_client_virtchnl_send(struct i40e_info *ldev,
         struct i40e_client *client,
         u32 vf_id, u8 *msg, u16 len)
{
 struct i40e_pf *pf = ldev->pf;
 struct i40e_hw *hw = &pf->hw;
 i40e_status err;

 err = i40e_aq_send_msg_to_vf(hw, vf_id, VIRTCHNL_OP_IWARP,
         0, msg, len, ((void*)0));
 if (err)
  dev_err(&pf->pdev->dev, "Unable to send iWarp message to VF, error %d, aq status %d\n",
   err, hw->aq.asq_last_status);

 return err;
}
