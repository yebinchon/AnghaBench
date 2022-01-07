
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct virtchnl_rss_hena {int hena; } ;
struct i40e_vf {int vf_id; int vf_states; struct i40e_pf* pf; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;
typedef int i40e_status ;


 int I40E_ERR_PARAM ;
 int I40E_VFQF_HENA1 (int,int ) ;
 int I40E_VF_STATE_ACTIVE ;
 int VIRTCHNL_OP_SET_RSS_HENA ;
 int i40e_vc_send_resp_to_vf (struct i40e_vf*,int ,int ) ;
 int i40e_write_rx_ctl (struct i40e_hw*,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_set_rss_hena(struct i40e_vf *vf, u8 *msg)
{
 struct virtchnl_rss_hena *vrh =
  (struct virtchnl_rss_hena *)msg;
 struct i40e_pf *pf = vf->pf;
 struct i40e_hw *hw = &pf->hw;
 i40e_status aq_ret = 0;

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
  aq_ret = I40E_ERR_PARAM;
  goto err;
 }
 i40e_write_rx_ctl(hw, I40E_VFQF_HENA1(0, vf->vf_id), (u32)vrh->hena);
 i40e_write_rx_ctl(hw, I40E_VFQF_HENA1(1, vf->vf_id),
     (u32)(vrh->hena >> 32));


err:
 return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_SET_RSS_HENA, aq_ret);
}
