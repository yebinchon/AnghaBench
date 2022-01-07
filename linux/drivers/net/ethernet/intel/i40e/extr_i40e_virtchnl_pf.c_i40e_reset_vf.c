
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vf {size_t lan_vsi_idx; int vf_id; struct i40e_pf* pf; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {int state; int * vsi; TYPE_1__* pdev; struct i40e_hw hw; } ;
struct TYPE_2__ {int dev; } ;


 int I40E_VPGEN_VFRSTAT (int ) ;
 int I40E_VPGEN_VFRSTAT_VFRD_MASK ;
 int __I40E_VF_DISABLE ;
 int clear_bit (int ,int ) ;
 int dev_err (int *,char*,int ) ;
 int i40e_cleanup_reset_vf (struct i40e_vf*) ;
 int i40e_flush (struct i40e_hw*) ;
 int i40e_trigger_vf_reset (struct i40e_vf*,int) ;
 int i40e_vsi_stop_rings (int ) ;
 int rd32 (struct i40e_hw*,int ) ;
 scalar_t__ test_and_set_bit (int ,int ) ;
 int usleep_range (int,int) ;

bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
{
 struct i40e_pf *pf = vf->pf;
 struct i40e_hw *hw = &pf->hw;
 bool rsd = 0;
 u32 reg;
 int i;




 if (test_and_set_bit(__I40E_VF_DISABLE, pf->state))
  return 0;

 i40e_trigger_vf_reset(vf, flr);




 for (i = 0; i < 10; i++) {





  usleep_range(10000, 20000);
  reg = rd32(hw, I40E_VPGEN_VFRSTAT(vf->vf_id));
  if (reg & I40E_VPGEN_VFRSTAT_VFRD_MASK) {
   rsd = 1;
   break;
  }
 }

 if (flr)
  usleep_range(10000, 20000);

 if (!rsd)
  dev_err(&pf->pdev->dev, "VF reset check timeout on VF %d\n",
   vf->vf_id);
 usleep_range(10000, 20000);


 if (vf->lan_vsi_idx != 0)
  i40e_vsi_stop_rings(pf->vsi[vf->lan_vsi_idx]);

 i40e_cleanup_reset_vf(vf);

 i40e_flush(hw);
 clear_bit(__I40E_VF_DISABLE, pf->state);

 return 1;
}
