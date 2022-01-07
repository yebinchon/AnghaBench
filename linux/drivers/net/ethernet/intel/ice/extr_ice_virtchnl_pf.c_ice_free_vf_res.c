
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vf {int lan_vsi_idx; int first_vector_idx; int vf_states; scalar_t__ num_mac; scalar_t__ lan_vsi_num; struct ice_pf* pf; } ;
struct ice_pf {int num_vf_msix; int hw; int * vsi; } ;


 int GLINT_DYN_CTL (int) ;
 int GLINT_DYN_CTL_CLEARPBA_M ;
 int ICE_VF_STATE_INIT ;
 int ICE_VF_STATE_MC_PROMISC ;
 int ICE_VF_STATE_UC_PROMISC ;
 int clear_bit (int ,int ) ;
 int ice_flush (int *) ;
 int ice_vsi_release (int ) ;
 int wr32 (int *,int ,int ) ;

__attribute__((used)) static void ice_free_vf_res(struct ice_vf *vf)
{
 struct ice_pf *pf = vf->pf;
 int i, last_vector_idx;




 clear_bit(ICE_VF_STATE_INIT, vf->vf_states);


 if (vf->lan_vsi_idx) {
  ice_vsi_release(pf->vsi[vf->lan_vsi_idx]);
  vf->lan_vsi_idx = 0;
  vf->lan_vsi_num = 0;
  vf->num_mac = 0;
 }

 last_vector_idx = vf->first_vector_idx + pf->num_vf_msix - 1;

 for (i = vf->first_vector_idx; i <= last_vector_idx; i++) {
  wr32(&pf->hw, GLINT_DYN_CTL(i), GLINT_DYN_CTL_CLEARPBA_M);
  ice_flush(&pf->hw);
 }

 clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states);
 clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
}
