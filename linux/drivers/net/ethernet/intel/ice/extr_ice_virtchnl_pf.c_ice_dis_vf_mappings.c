
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ice_vsi {scalar_t__ tx_mapping_mode; scalar_t__ rx_mapping_mode; } ;
struct ice_vf {size_t lan_vsi_idx; int first_vector_idx; int vf_id; struct ice_pf* pf; } ;
struct ice_hw {int pf_id; } ;
struct ice_pf {int num_vf_msix; TYPE_1__* pdev; struct ice_vsi** vsi; struct ice_hw hw; } ;
struct TYPE_2__ {int dev; } ;


 int GLINT_VECT2FUNC (int) ;
 int GLINT_VECT2FUNC_IS_PF_M ;
 int GLINT_VECT2FUNC_IS_PF_S ;
 int GLINT_VECT2FUNC_PF_NUM_M ;
 int GLINT_VECT2FUNC_PF_NUM_S ;
 scalar_t__ ICE_VSI_MAP_CONTIG ;
 int VPINT_ALLOC (int ) ;
 int VPINT_ALLOC_PCI (int ) ;
 int VPLAN_RX_QBASE (int ) ;
 int VPLAN_TX_QBASE (int ) ;
 int dev_err (int *,char*) ;
 int wr32 (struct ice_hw*,int ,int) ;

__attribute__((used)) static void ice_dis_vf_mappings(struct ice_vf *vf)
{
 struct ice_pf *pf = vf->pf;
 struct ice_vsi *vsi;
 int first, last, v;
 struct ice_hw *hw;

 hw = &pf->hw;
 vsi = pf->vsi[vf->lan_vsi_idx];

 wr32(hw, VPINT_ALLOC(vf->vf_id), 0);
 wr32(hw, VPINT_ALLOC_PCI(vf->vf_id), 0);

 first = vf->first_vector_idx;
 last = first + pf->num_vf_msix - 1;
 for (v = first; v <= last; v++) {
  u32 reg;

  reg = (((1 << GLINT_VECT2FUNC_IS_PF_S) &
   GLINT_VECT2FUNC_IS_PF_M) |
         ((hw->pf_id << GLINT_VECT2FUNC_PF_NUM_S) &
   GLINT_VECT2FUNC_PF_NUM_M));
  wr32(hw, GLINT_VECT2FUNC(v), reg);
 }

 if (vsi->tx_mapping_mode == ICE_VSI_MAP_CONTIG)
  wr32(hw, VPLAN_TX_QBASE(vf->vf_id), 0);
 else
  dev_err(&pf->pdev->dev,
   "Scattered mode for VF Tx queues is not yet implemented\n");

 if (vsi->rx_mapping_mode == ICE_VSI_MAP_CONTIG)
  wr32(hw, VPLAN_RX_QBASE(vf->vf_id), 0);
 else
  dev_err(&pf->pdev->dev,
   "Scattered mode for VF Rx queues is not yet implemented\n");
}
