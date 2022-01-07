
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vf {int vf_id; struct i40e_pf* pf; } ;
struct TYPE_2__ {int vf_base_id; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {struct i40e_hw hw; } ;


 int EIO ;
 int I40E_PF_PCI_CIAA ;
 int I40E_PF_PCI_CIAA_VF_NUM_SHIFT ;
 int I40E_PF_PCI_CIAD ;
 int VF_DEVICE_STATUS ;
 int VF_TRANS_PENDING_MASK ;
 int rd32 (struct i40e_hw*,int ) ;
 int udelay (int) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static int i40e_quiesce_vf_pci(struct i40e_vf *vf)
{
 struct i40e_pf *pf = vf->pf;
 struct i40e_hw *hw = &pf->hw;
 int vf_abs_id, i;
 u32 reg;

 vf_abs_id = vf->vf_id + hw->func_caps.vf_base_id;

 wr32(hw, I40E_PF_PCI_CIAA,
      VF_DEVICE_STATUS | (vf_abs_id << I40E_PF_PCI_CIAA_VF_NUM_SHIFT));
 for (i = 0; i < 100; i++) {
  reg = rd32(hw, I40E_PF_PCI_CIAD);
  if ((reg & VF_TRANS_PENDING_MASK) == 0)
   return 0;
  udelay(1);
 }
 return -EIO;
}
