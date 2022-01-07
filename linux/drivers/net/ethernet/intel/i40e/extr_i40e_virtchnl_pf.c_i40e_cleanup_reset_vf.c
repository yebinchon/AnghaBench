
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vf {int vf_id; scalar_t__ num_vlan; int vf_states; int lan_vsi_id; struct i40e_pf* pf; } ;
struct TYPE_2__ {int vf_base_id; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {struct i40e_hw hw; } ;


 int I40E_VFGEN_RSTAT1 (int) ;
 int I40E_VF_STATE_ACTIVE ;
 int I40E_VF_STATE_DISABLED ;
 int I40E_VF_STATE_PRE_ENABLE ;
 int I40E_VPGEN_VFRTRIG (int) ;
 int I40E_VPGEN_VFRTRIG_VFSWR_MASK ;
 int VIRTCHNL_VFR_VFACTIVE ;
 int clear_bit (int ,int *) ;
 int i40e_alloc_vf_res (struct i40e_vf*) ;
 int i40e_config_vf_promiscuous_mode (struct i40e_vf*,int ,int,int) ;
 int i40e_enable_vf_mappings (struct i40e_vf*) ;
 int i40e_free_vf_res (struct i40e_vf*) ;
 int i40e_notify_client_of_vf_reset (struct i40e_pf*,int) ;
 int rd32 (struct i40e_hw*,int ) ;
 int set_bit (int ,int *) ;
 int test_and_clear_bit (int ,int *) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void i40e_cleanup_reset_vf(struct i40e_vf *vf)
{
 struct i40e_pf *pf = vf->pf;
 struct i40e_hw *hw = &pf->hw;
 u32 reg;


 i40e_config_vf_promiscuous_mode(vf, vf->lan_vsi_id, 0, 0);


 i40e_free_vf_res(vf);
 reg = rd32(hw, I40E_VPGEN_VFRTRIG(vf->vf_id));
 reg &= ~I40E_VPGEN_VFRTRIG_VFSWR_MASK;
 wr32(hw, I40E_VPGEN_VFRTRIG(vf->vf_id), reg);


 if (!i40e_alloc_vf_res(vf)) {
  int abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
  i40e_enable_vf_mappings(vf);
  set_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states);
  clear_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);

  if (!test_and_clear_bit(I40E_VF_STATE_PRE_ENABLE,
     &vf->vf_states))
   i40e_notify_client_of_vf_reset(pf, abs_vf_id);
  vf->num_vlan = 0;
 }





 wr32(hw, I40E_VFGEN_RSTAT1(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
}
