
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int * p_cxt_mngr; } ;


 int kfree (int *) ;
 int qed_cid_map_free (struct qed_hwfn*) ;
 int qed_cxt_src_t2_free (struct qed_hwfn*) ;
 int qed_ilt_shadow_free (struct qed_hwfn*) ;

void qed_cxt_mngr_free(struct qed_hwfn *p_hwfn)
{
 if (!p_hwfn->p_cxt_mngr)
  return;

 qed_cid_map_free(p_hwfn);
 qed_cxt_src_t2_free(p_hwfn);
 qed_ilt_shadow_free(p_hwfn);
 kfree(p_hwfn->p_cxt_mngr);

 p_hwfn->p_cxt_mngr = ((void*)0);
}
