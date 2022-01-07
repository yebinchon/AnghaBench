
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int sp_dpc; scalar_t__ b_sp_dpc_enabled; } ;


 int tasklet_disable (int ) ;
 int tasklet_enable (int ) ;

__attribute__((used)) static void qed_slowpath_tasklet_flush(struct qed_hwfn *p_hwfn)
{




 if (p_hwfn->b_sp_dpc_enabled) {
  tasklet_disable(p_hwfn->sp_dpc);
  tasklet_enable(p_hwfn->sp_dpc);
 }
}
