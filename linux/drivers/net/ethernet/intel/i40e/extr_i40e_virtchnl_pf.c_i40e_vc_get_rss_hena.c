
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtchnl_rss_hena {int hena; } ;
struct i40e_vf {int vf_states; struct i40e_pf* pf; } ;
struct i40e_pf {int dummy; } ;
typedef int i40e_status ;


 int GFP_KERNEL ;
 int I40E_ERR_NO_MEMORY ;
 int I40E_ERR_PARAM ;
 int I40E_VF_STATE_ACTIVE ;
 int VIRTCHNL_OP_GET_RSS_HENA_CAPS ;
 int i40e_pf_get_default_rss_hena (struct i40e_pf*) ;
 int i40e_vc_send_msg_to_vf (struct i40e_vf*,int ,int,int *,int) ;
 int kfree (struct virtchnl_rss_hena*) ;
 struct virtchnl_rss_hena* kzalloc (int,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_get_rss_hena(struct i40e_vf *vf, u8 *msg)
{
 struct virtchnl_rss_hena *vrh = ((void*)0);
 struct i40e_pf *pf = vf->pf;
 i40e_status aq_ret = 0;
 int len = 0;

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
  aq_ret = I40E_ERR_PARAM;
  goto err;
 }
 len = sizeof(struct virtchnl_rss_hena);

 vrh = kzalloc(len, GFP_KERNEL);
 if (!vrh) {
  aq_ret = I40E_ERR_NO_MEMORY;
  len = 0;
  goto err;
 }
 vrh->hena = i40e_pf_get_default_rss_hena(pf);
err:

 aq_ret = i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_RSS_HENA_CAPS,
     aq_ret, (u8 *)vrh, len);
 kfree(vrh);
 return aq_ret;
}
