
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_vsi {scalar_t__ vf_id; } ;
struct i40e_vf {scalar_t__ vf_id; struct i40e_pf* pf; } ;
struct i40e_pf {int dummy; } ;


 struct i40e_vsi* i40e_find_vsi_from_id (struct i40e_pf*,int ) ;

__attribute__((used)) static inline bool i40e_vc_isvalid_vsi_id(struct i40e_vf *vf, u16 vsi_id)
{
 struct i40e_pf *pf = vf->pf;
 struct i40e_vsi *vsi = i40e_find_vsi_from_id(pf, vsi_id);

 return (vsi && (vsi->vf_id == vf->vf_id));
}
