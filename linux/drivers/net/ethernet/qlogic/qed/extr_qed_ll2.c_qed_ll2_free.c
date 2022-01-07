
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int * p_ll2_info; } ;


 int kfree (int *) ;

void qed_ll2_free(struct qed_hwfn *p_hwfn)
{
 if (!p_hwfn->p_ll2_info)
  return;

 kfree(p_hwfn->p_ll2_info);
 p_hwfn->p_ll2_info = ((void*)0);
}
