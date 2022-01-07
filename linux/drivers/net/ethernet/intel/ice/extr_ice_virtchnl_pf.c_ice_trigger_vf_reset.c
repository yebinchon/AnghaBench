
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ice_vf {int vf_id; int vf_states; struct ice_pf* pf; } ;
struct TYPE_3__ {int vf_base_id; } ;
struct ice_hw {TYPE_1__ func_caps; } ;
struct ice_pf {TYPE_2__* pdev; struct ice_hw hw; } ;
struct TYPE_4__ {int dev; } ;


 int BIT (int) ;
 int GLGEN_VFLRSTAT (int) ;
 int ICE_PCI_CIAD_WAIT_COUNT ;
 int ICE_PCI_CIAD_WAIT_DELAY_US ;
 int ICE_VF_STATE_ACTIVE ;
 int ICE_VF_STATE_INIT ;
 int PF_PCI_CIAA ;
 int PF_PCI_CIAA_VF_NUM_S ;
 int PF_PCI_CIAD ;
 int VF_DEVICE_STATUS ;
 int VF_MBX_ARQLEN (int) ;
 int VF_TRANS_PENDING_M ;
 int VPGEN_VFRTRIG (int) ;
 int VPGEN_VFRTRIG_VFSWR_M ;
 int clear_bit (int ,int ) ;
 int dev_err (int *,char*,int) ;
 int ice_flush (struct ice_hw*) ;
 int rd32 (struct ice_hw*,int ) ;
 int udelay (int ) ;
 int wr32 (struct ice_hw*,int ,int) ;

__attribute__((used)) static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr, bool is_pfr)
{
 struct ice_pf *pf = vf->pf;
 u32 reg, reg_idx, bit_idx;
 struct ice_hw *hw;
 int vf_abs_id, i;

 hw = &pf->hw;
 vf_abs_id = vf->vf_id + hw->func_caps.vf_base_id;


 clear_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);







 clear_bit(ICE_VF_STATE_INIT, vf->vf_states);






 if (!is_pfr)
  wr32(hw, VF_MBX_ARQLEN(vf_abs_id), 0);




 if (!is_vflr) {

  reg = rd32(hw, VPGEN_VFRTRIG(vf->vf_id));
  reg |= VPGEN_VFRTRIG_VFSWR_M;
  wr32(hw, VPGEN_VFRTRIG(vf->vf_id), reg);
 }

 reg_idx = (vf_abs_id) / 32;
 bit_idx = (vf_abs_id) % 32;
 wr32(hw, GLGEN_VFLRSTAT(reg_idx), BIT(bit_idx));
 ice_flush(hw);

 wr32(hw, PF_PCI_CIAA,
      VF_DEVICE_STATUS | (vf_abs_id << PF_PCI_CIAA_VF_NUM_S));
 for (i = 0; i < ICE_PCI_CIAD_WAIT_COUNT; i++) {
  reg = rd32(hw, PF_PCI_CIAD);

  if ((reg & VF_TRANS_PENDING_M) == 0)
   break;

  dev_err(&pf->pdev->dev,
   "VF %d PCI transactions stuck\n", vf->vf_id);
  udelay(ICE_PCI_CIAD_WAIT_DELAY_US);
 }
}
