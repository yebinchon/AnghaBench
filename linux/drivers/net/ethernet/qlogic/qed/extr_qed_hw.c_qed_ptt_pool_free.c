
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int * p_ptt_pool; } ;


 int kfree (int *) ;

void qed_ptt_pool_free(struct qed_hwfn *p_hwfn)
{
 kfree(p_hwfn->p_ptt_pool);
 p_hwfn->p_ptt_pool = ((void*)0);
}
