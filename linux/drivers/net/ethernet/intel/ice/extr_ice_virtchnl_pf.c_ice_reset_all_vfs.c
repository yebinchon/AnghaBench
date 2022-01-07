
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ice_vsi {int idx; int port_info; } ;
struct ice_vf {size_t lan_vsi_idx; scalar_t__ num_vf_qs; int vf_id; int vf_states; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {int num_alloc_vfs; TYPE_1__* pdev; struct ice_vf* vf; struct ice_vsi** vsi; int state; struct ice_hw hw; } ;
struct TYPE_2__ {int dev; } ;


 int ICE_VF_RESET ;
 int ICE_VF_STATE_QS_ENA ;
 int VPGEN_VFRSTAT (int ) ;
 int VPGEN_VFRSTAT_VFRD_M ;
 int __ICE_VF_DIS ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int ice_config_res_vfs (struct ice_pf*) ;
 int ice_dis_vf_qs (struct ice_vf*) ;
 int ice_dis_vsi_txq (int ,int ,int ,int ,int *,int *,int *,int ,int ,int *) ;
 int ice_free_vf_res (struct ice_vf*) ;
 scalar_t__ ice_sriov_free_msix_res (struct ice_pf*) ;
 int ice_trigger_vf_reset (struct ice_vf*,int,int) ;
 int rd32 (struct ice_hw*,int ) ;
 scalar_t__ test_and_set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;
 int usleep_range (int,int) ;

bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
{
 struct ice_hw *hw = &pf->hw;
 struct ice_vf *vf;
 int v, i;


 if (!pf->num_alloc_vfs)
  return 0;


 if (test_and_set_bit(__ICE_VF_DIS, pf->state))
  return 0;


 for (v = 0; v < pf->num_alloc_vfs; v++)
  ice_trigger_vf_reset(&pf->vf[v], is_vflr, 1);

 for (v = 0; v < pf->num_alloc_vfs; v++) {
  struct ice_vsi *vsi;

  vf = &pf->vf[v];
  vsi = pf->vsi[vf->lan_vsi_idx];
  if (test_bit(ICE_VF_STATE_QS_ENA, vf->vf_states))
   ice_dis_vf_qs(vf);
  ice_dis_vsi_txq(vsi->port_info, vsi->idx, 0, 0, ((void*)0), ((void*)0),
    ((void*)0), ICE_VF_RESET, vf->vf_id, ((void*)0));
 }







 for (i = 0, v = 0; i < 10 && v < pf->num_alloc_vfs; i++) {


  while (v < pf->num_alloc_vfs) {
   u32 reg;

   vf = &pf->vf[v];
   reg = rd32(hw, VPGEN_VFRSTAT(vf->vf_id));
   if (!(reg & VPGEN_VFRSTAT_VFRD_M)) {

    usleep_range(10, 20);
    break;
   }




   v++;
  }
 }




 if (v < pf->num_alloc_vfs)
  dev_warn(&pf->pdev->dev, "VF reset check timeout\n");


 for (v = 0; v < pf->num_alloc_vfs; v++) {
  vf = &pf->vf[v];

  ice_free_vf_res(vf);






  vf->num_vf_qs = 0;
 }

 if (ice_sriov_free_msix_res(pf))
  dev_err(&pf->pdev->dev,
   "Failed to free MSIX resources used by SR-IOV\n");

 if (!ice_config_res_vfs(pf))
  return 0;

 return 1;
}
