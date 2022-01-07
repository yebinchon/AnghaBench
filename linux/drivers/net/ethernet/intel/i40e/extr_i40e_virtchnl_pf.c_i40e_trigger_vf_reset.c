
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vf {int vf_id; int vf_states; struct i40e_pf* pf; } ;
struct TYPE_3__ {int vf_base_id; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {TYPE_2__* pdev; struct i40e_hw hw; } ;
struct TYPE_4__ {int dev; } ;


 int BIT (int) ;
 int I40E_GLGEN_VFLRSTAT (int) ;
 int I40E_VF_STATE_ACTIVE ;
 int I40E_VF_STATE_INIT ;
 int I40E_VPGEN_VFRTRIG (int) ;
 int I40E_VPGEN_VFRTRIG_VFSWR_MASK ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,int) ;
 int i40e_flush (struct i40e_hw*) ;
 scalar_t__ i40e_quiesce_vf_pci (struct i40e_vf*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void i40e_trigger_vf_reset(struct i40e_vf *vf, bool flr)
{
 struct i40e_pf *pf = vf->pf;
 struct i40e_hw *hw = &pf->hw;
 u32 reg, reg_idx, bit_idx;


 clear_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states);







 clear_bit(I40E_VF_STATE_INIT, &vf->vf_states);




 if (!flr) {

  reg = rd32(hw, I40E_VPGEN_VFRTRIG(vf->vf_id));
  reg |= I40E_VPGEN_VFRTRIG_VFSWR_MASK;
  wr32(hw, I40E_VPGEN_VFRTRIG(vf->vf_id), reg);
  i40e_flush(hw);
 }

 reg_idx = (hw->func_caps.vf_base_id + vf->vf_id) / 32;
 bit_idx = (hw->func_caps.vf_base_id + vf->vf_id) % 32;
 wr32(hw, I40E_GLGEN_VFLRSTAT(reg_idx), BIT(bit_idx));
 i40e_flush(hw);

 if (i40e_quiesce_vf_pci(vf))
  dev_err(&pf->pdev->dev, "VF %d PCI transactions stuck\n",
   vf->vf_id);
}
