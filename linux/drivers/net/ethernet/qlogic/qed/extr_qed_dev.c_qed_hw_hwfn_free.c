
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * p_igu_info; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;


 int kfree (int *) ;
 int qed_ptt_pool_free (struct qed_hwfn*) ;

__attribute__((used)) static void qed_hw_hwfn_free(struct qed_hwfn *p_hwfn)
{
 qed_ptt_pool_free(p_hwfn);
 kfree(p_hwfn->hw_info.p_igu_info);
 p_hwfn->hw_info.p_igu_info = ((void*)0);
}
