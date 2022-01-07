
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int * sp_dpc; } ;


 int kfree (int *) ;

__attribute__((used)) static void qed_int_sp_dpc_free(struct qed_hwfn *p_hwfn)
{
 kfree(p_hwfn->sp_dpc);
 p_hwfn->sp_dpc = ((void*)0);
}
