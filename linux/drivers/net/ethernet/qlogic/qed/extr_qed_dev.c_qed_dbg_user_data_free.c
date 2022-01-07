
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int * dbg_user_info; } ;


 int kfree (int *) ;

__attribute__((used)) static void qed_dbg_user_data_free(struct qed_hwfn *p_hwfn)
{
 kfree(p_hwfn->dbg_user_info);
 p_hwfn->dbg_user_info = ((void*)0);
}
