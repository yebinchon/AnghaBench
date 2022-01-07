
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ice_vf {int vf_id; scalar_t__ num_vlan; int vf_states; struct ice_pf* pf; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {struct ice_hw hw; } ;


 int ICE_VF_STATE_ACTIVE ;
 int ICE_VF_STATE_DIS ;
 int VFGEN_RSTAT (int ) ;
 int VIRTCHNL_VFR_VFACTIVE ;
 int VPGEN_VFRTRIG (int ) ;
 int VPGEN_VFRTRIG_VFSWR_M ;
 int clear_bit (int ,int ) ;
 int ice_alloc_vf_res (struct ice_vf*) ;
 int ice_ena_vf_mappings (struct ice_vf*) ;
 int rd32 (struct ice_hw*,int ) ;
 int set_bit (int ,int ) ;
 int wr32 (struct ice_hw*,int ,int ) ;

__attribute__((used)) static void ice_cleanup_and_realloc_vf(struct ice_vf *vf)
{
 struct ice_pf *pf = vf->pf;
 struct ice_hw *hw;
 u32 reg;

 hw = &pf->hw;
 reg = rd32(hw, VPGEN_VFRTRIG(vf->vf_id));
 reg &= ~VPGEN_VFRTRIG_VFSWR_M;
 wr32(hw, VPGEN_VFRTRIG(vf->vf_id), reg);


 if (!ice_alloc_vf_res(vf)) {
  ice_ena_vf_mappings(vf);
  set_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);
  clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
  vf->num_vlan = 0;
 }





 wr32(hw, VFGEN_RSTAT(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
}
