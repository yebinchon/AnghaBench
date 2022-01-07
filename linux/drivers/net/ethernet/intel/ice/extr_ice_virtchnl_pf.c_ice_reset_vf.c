
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ice_vsi {int idx; int port_info; } ;
struct ice_vf {size_t lan_vsi_idx; scalar_t__ num_vlan; scalar_t__ port_vlan_id; int vf_states; int vf_id; struct ice_pf* pf; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {TYPE_1__* pdev; struct ice_vsi** vsi; struct ice_hw hw; int state; } ;
struct TYPE_2__ {int dev; } ;


 int ICE_UCAST_PROMISC_BITS ;
 int ICE_UCAST_VLAN_PROMISC_BITS ;
 int ICE_VF_RESET ;
 int ICE_VF_STATE_DIS ;
 int ICE_VF_STATE_MC_PROMISC ;
 int ICE_VF_STATE_QS_ENA ;
 int ICE_VF_STATE_UC_PROMISC ;
 int VPGEN_VFRSTAT (int ) ;
 int VPGEN_VFRSTAT_VFRD_M ;
 int __ICE_VF_DIS ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int ) ;
 int ice_cleanup_and_realloc_vf (struct ice_vf*) ;
 int ice_dis_vf_qs (struct ice_vf*) ;
 int ice_dis_vsi_txq (int ,int ,int ,int ,int *,int *,int *,int ,int ,int *) ;
 int ice_flush (struct ice_hw*) ;
 int ice_free_vf_res (struct ice_vf*) ;
 int ice_trigger_vf_reset (struct ice_vf*,int,int) ;
 scalar_t__ ice_vf_set_vsi_promisc (struct ice_vf*,struct ice_vsi*,int ,int) ;
 int rd32 (struct ice_hw*,int ) ;
 scalar_t__ test_and_set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
{
 struct ice_pf *pf = vf->pf;
 struct ice_vsi *vsi;
 struct ice_hw *hw;
 bool rsd = 0;
 u8 promisc_m;
 u32 reg;
 int i;




 if (test_bit(__ICE_VF_DIS, pf->state))
  return 0;





 if (test_and_set_bit(ICE_VF_STATE_DIS, vf->vf_states))
  return 0;

 ice_trigger_vf_reset(vf, is_vflr, 0);

 vsi = pf->vsi[vf->lan_vsi_idx];

 if (test_bit(ICE_VF_STATE_QS_ENA, vf->vf_states))
  ice_dis_vf_qs(vf);




 ice_dis_vsi_txq(vsi->port_info, vsi->idx, 0, 0, ((void*)0), ((void*)0),
   ((void*)0), ICE_VF_RESET, vf->vf_id, ((void*)0));

 hw = &pf->hw;



 for (i = 0; i < 10; i++) {




  reg = rd32(hw, VPGEN_VFRSTAT(vf->vf_id));
  if (reg & VPGEN_VFRSTAT_VFRD_M) {
   rsd = 1;
   break;
  }


  usleep_range(10, 20);
 }




 if (!rsd)
  dev_warn(&pf->pdev->dev, "VF reset check timeout on VF %d\n",
    vf->vf_id);




 if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
     test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
  if (vf->port_vlan_id || vf->num_vlan)
   promisc_m = ICE_UCAST_VLAN_PROMISC_BITS;
  else
   promisc_m = ICE_UCAST_PROMISC_BITS;

  vsi = pf->vsi[vf->lan_vsi_idx];
  if (ice_vf_set_vsi_promisc(vf, vsi, promisc_m, 1))
   dev_err(&pf->pdev->dev, "disabling promiscuous mode failed\n");
 }


 ice_free_vf_res(vf);

 ice_cleanup_and_realloc_vf(vf);

 ice_flush(hw);

 return 1;
}
