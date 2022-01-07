
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;


 int qed_int_sb_attn_free (struct qed_hwfn*) ;
 int qed_int_sp_dpc_free (struct qed_hwfn*) ;
 int qed_int_sp_sb_free (struct qed_hwfn*) ;

void qed_int_free(struct qed_hwfn *p_hwfn)
{
 qed_int_sp_sb_free(p_hwfn);
 qed_int_sb_attn_free(p_hwfn);
 qed_int_sp_dpc_free(p_hwfn);
}
