
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int * p_dcbx_info; } ;


 int kfree (int *) ;

void qed_dcbx_info_free(struct qed_hwfn *p_hwfn)
{
 kfree(p_hwfn->p_dcbx_info);
 p_hwfn->p_dcbx_info = ((void*)0);
}
