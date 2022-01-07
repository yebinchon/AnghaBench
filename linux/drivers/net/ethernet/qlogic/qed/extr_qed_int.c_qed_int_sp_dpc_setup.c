
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int b_sp_dpc_enabled; int sp_dpc; } ;


 int qed_int_sp_dpc ;
 int tasklet_init (int ,int ,unsigned long) ;

__attribute__((used)) static void qed_int_sp_dpc_setup(struct qed_hwfn *p_hwfn)
{
 tasklet_init(p_hwfn->sp_dpc,
       qed_int_sp_dpc, (unsigned long)p_hwfn);
 p_hwfn->b_sp_dpc_enabled = 1;
}
