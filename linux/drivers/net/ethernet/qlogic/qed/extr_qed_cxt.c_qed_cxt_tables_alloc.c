
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;


 int qed_cid_map_alloc (struct qed_hwfn*) ;
 int qed_cxt_mngr_free (struct qed_hwfn*) ;
 int qed_cxt_src_t2_alloc (struct qed_hwfn*) ;
 int qed_ilt_shadow_alloc (struct qed_hwfn*) ;

int qed_cxt_tables_alloc(struct qed_hwfn *p_hwfn)
{
 int rc;


 rc = qed_ilt_shadow_alloc(p_hwfn);
 if (rc)
  goto tables_alloc_fail;


 rc = qed_cxt_src_t2_alloc(p_hwfn);
 if (rc)
  goto tables_alloc_fail;


 rc = qed_cid_map_alloc(p_hwfn);
 if (rc)
  goto tables_alloc_fail;

 return 0;

tables_alloc_fail:
 qed_cxt_mngr_free(p_hwfn);
 return rc;
}
