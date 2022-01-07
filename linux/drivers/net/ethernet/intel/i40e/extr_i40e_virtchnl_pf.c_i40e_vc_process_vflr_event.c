
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vf {int dummy; } ;
struct TYPE_2__ {int vf_base_id; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {int num_alloc_vfs; struct i40e_vf* vf; int state; struct i40e_hw hw; } ;


 int BIT (int) ;
 int I40E_GLGEN_VFLRSTAT (int) ;
 int I40E_PFINT_ICR0_ENA ;
 int I40E_PFINT_ICR0_ENA_VFLR_MASK ;
 int __I40E_VFLR_EVENT_PENDING ;
 int clear_bit (int ,int ) ;
 int i40e_flush (struct i40e_hw*) ;
 int i40e_reset_vf (struct i40e_vf*,int) ;
 int rd32 (struct i40e_hw*,int ) ;
 int test_bit (int ,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

int i40e_vc_process_vflr_event(struct i40e_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 u32 reg, reg_idx, bit_idx;
 struct i40e_vf *vf;
 int vf_id;

 if (!test_bit(__I40E_VFLR_EVENT_PENDING, pf->state))
  return 0;






 reg = rd32(hw, I40E_PFINT_ICR0_ENA);
 reg |= I40E_PFINT_ICR0_ENA_VFLR_MASK;
 wr32(hw, I40E_PFINT_ICR0_ENA, reg);
 i40e_flush(hw);

 clear_bit(__I40E_VFLR_EVENT_PENDING, pf->state);
 for (vf_id = 0; vf_id < pf->num_alloc_vfs; vf_id++) {
  reg_idx = (hw->func_caps.vf_base_id + vf_id) / 32;
  bit_idx = (hw->func_caps.vf_base_id + vf_id) % 32;

  vf = &pf->vf[vf_id];
  reg = rd32(hw, I40E_GLGEN_VFLRSTAT(reg_idx));
  if (reg & BIT(bit_idx))

   i40e_reset_vf(vf, 1);
 }

 return 0;
}
