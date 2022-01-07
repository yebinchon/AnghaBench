
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct i40e_qvlist_info {size_t num_vectors; struct i40e_qv_info* qv_info; } ;
struct i40e_qv_info {scalar_t__ v_idx; } ;
struct i40e_pf {int hw; } ;
struct i40e_info {struct i40e_qvlist_info* qvlist_info; struct i40e_pf* pf; } ;


 size_t I40E_PFINT_LNKLSTN (scalar_t__) ;
 int I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK ;
 int kfree (struct i40e_qvlist_info*) ;
 int wr32 (int *,size_t,int ) ;

__attribute__((used)) static void i40e_client_release_qvlist(struct i40e_info *ldev)
{
 struct i40e_qvlist_info *qvlist_info = ldev->qvlist_info;
 u32 i;

 if (!ldev->qvlist_info)
  return;

 for (i = 0; i < qvlist_info->num_vectors; i++) {
  struct i40e_pf *pf = ldev->pf;
  struct i40e_qv_info *qv_info;
  u32 reg_idx;

  qv_info = &qvlist_info->qv_info[i];
  if (!qv_info)
   continue;
  reg_idx = I40E_PFINT_LNKLSTN(qv_info->v_idx - 1);
  wr32(&pf->hw, reg_idx, I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK);
 }
 kfree(ldev->qvlist_info);
 ldev->qvlist_info = ((void*)0);
}
