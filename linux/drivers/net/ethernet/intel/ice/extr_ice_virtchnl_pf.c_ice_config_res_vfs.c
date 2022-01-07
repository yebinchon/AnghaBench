
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_vf {int num_vf_qs; int vf_id; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {int num_alloc_vfs; int state; TYPE_1__* pdev; int num_vf_qps; struct ice_vf* vf; struct ice_hw hw; } ;
struct TYPE_2__ {int dev; } ;


 int __ICE_OICR_INTR_DIS ;
 int __ICE_VF_DIS ;
 int clear_bit (int ,int ) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*) ;
 scalar_t__ ice_check_avail_res (struct ice_pf*) ;
 int ice_cleanup_and_realloc_vf (struct ice_vf*) ;
 int ice_flush (struct ice_hw*) ;
 int ice_irq_dynamic_ena (struct ice_hw*,int *,int *) ;
 scalar_t__ test_and_clear_bit (int ,int ) ;

__attribute__((used)) static bool ice_config_res_vfs(struct ice_pf *pf)
{
 struct ice_hw *hw = &pf->hw;
 int v;

 if (ice_check_avail_res(pf)) {
  dev_err(&pf->pdev->dev,
   "Cannot allocate VF resources, try with fewer number of VFs\n");
  return 0;
 }


 if (test_and_clear_bit(__ICE_OICR_INTR_DIS, pf->state))
  ice_irq_dynamic_ena(hw, ((void*)0), ((void*)0));


 for (v = 0; v < pf->num_alloc_vfs; v++) {
  struct ice_vf *vf = &pf->vf[v];

  vf->num_vf_qs = pf->num_vf_qps;
  dev_dbg(&pf->pdev->dev,
   "VF-id %d has %d queues configured\n",
   vf->vf_id, vf->num_vf_qs);
  ice_cleanup_and_realloc_vf(vf);
 }

 ice_flush(hw);
 clear_bit(__ICE_VF_DIS, pf->state);

 return 1;
}
