
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vf {size_t lan_vsi_idx; int vf_id; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {int num_alloc_vfs; int state; struct i40e_vf* vf; int * vsi; TYPE_1__* pdev; struct i40e_hw hw; } ;
struct TYPE_2__ {int dev; } ;


 int I40E_VPGEN_VFRSTAT (int ) ;
 int I40E_VPGEN_VFRSTAT_VFRD_MASK ;
 int __I40E_VF_DISABLE ;
 int clear_bit (int ,int ) ;
 int dev_err (int *,char*,int ) ;
 int i40e_cleanup_reset_vf (struct i40e_vf*) ;
 int i40e_flush (struct i40e_hw*) ;
 int i40e_trigger_vf_reset (struct i40e_vf*,int) ;
 int i40e_vsi_stop_rings_no_wait (int ) ;
 int i40e_vsi_wait_queues_disabled (int ) ;
 int mdelay (int) ;
 int rd32 (struct i40e_hw*,int ) ;
 scalar_t__ test_and_set_bit (int ,int ) ;
 int usleep_range (int,int) ;

bool i40e_reset_all_vfs(struct i40e_pf *pf, bool flr)
{
 struct i40e_hw *hw = &pf->hw;
 struct i40e_vf *vf;
 int i, v;
 u32 reg;


 if (!pf->num_alloc_vfs)
  return 0;


 if (test_and_set_bit(__I40E_VF_DISABLE, pf->state))
  return 0;


 for (v = 0; v < pf->num_alloc_vfs; v++)
  i40e_trigger_vf_reset(&pf->vf[v], flr);







 for (i = 0, v = 0; i < 10 && v < pf->num_alloc_vfs; i++) {
  usleep_range(10000, 20000);




  while (v < pf->num_alloc_vfs) {
   vf = &pf->vf[v];
   reg = rd32(hw, I40E_VPGEN_VFRSTAT(vf->vf_id));
   if (!(reg & I40E_VPGEN_VFRSTAT_VFRD_MASK))
    break;




   v++;
  }
 }

 if (flr)
  usleep_range(10000, 20000);




 if (v < pf->num_alloc_vfs)
  dev_err(&pf->pdev->dev, "VF reset check timeout on VF %d\n",
   pf->vf[v].vf_id);
 usleep_range(10000, 20000);




 for (v = 0; v < pf->num_alloc_vfs; v++) {

  if (pf->vf[v].lan_vsi_idx == 0)
   continue;

  i40e_vsi_stop_rings_no_wait(pf->vsi[pf->vf[v].lan_vsi_idx]);
 }




 for (v = 0; v < pf->num_alloc_vfs; v++) {

  if (pf->vf[v].lan_vsi_idx == 0)
   continue;

  i40e_vsi_wait_queues_disabled(pf->vsi[pf->vf[v].lan_vsi_idx]);
 }




 mdelay(50);


 for (v = 0; v < pf->num_alloc_vfs; v++)
  i40e_cleanup_reset_vf(&pf->vf[v]);

 i40e_flush(hw);
 clear_bit(__I40E_VF_DISABLE, pf->state);

 return 1;
}
