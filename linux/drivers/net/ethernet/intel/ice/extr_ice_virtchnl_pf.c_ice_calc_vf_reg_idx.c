
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vf {int vf_id; struct ice_pf* pf; } ;
struct ice_q_vector {int v_idx; } ;
struct ice_pf {int sriov_base_vector; int num_vf_msix; } ;


 int EINVAL ;

int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector)
{
 struct ice_pf *pf;

 if (!vf || !q_vector)
  return -EINVAL;

 pf = vf->pf;


 return pf->sriov_base_vector + pf->num_vf_msix * vf->vf_id +
  q_vector->v_idx + 1;
}
