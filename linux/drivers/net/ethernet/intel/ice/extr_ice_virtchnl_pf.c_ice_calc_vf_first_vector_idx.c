
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vf {int vf_id; } ;
struct ice_pf {int sriov_base_vector; int num_vf_msix; } ;



__attribute__((used)) static int ice_calc_vf_first_vector_idx(struct ice_pf *pf, struct ice_vf *vf)
{
 return pf->sriov_base_vector + vf->vf_id * pf->num_vf_msix;
}
