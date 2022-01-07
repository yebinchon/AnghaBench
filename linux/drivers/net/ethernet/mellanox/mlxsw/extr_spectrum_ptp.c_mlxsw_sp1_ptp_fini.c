
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_ptp_state {int unmatched_ht; int ht_gc_dw; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_REG_MTPTPT_TRAP_ID_PTP0 ;
 int MLXSW_REG_MTPTPT_TRAP_ID_PTP1 ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (struct mlxsw_sp_ptp_state*) ;
 int mlxsw_sp1_ptp_mtpppc_set (struct mlxsw_sp*,int ,int ) ;
 int mlxsw_sp1_ptp_set_fifo_clr_on_trap (struct mlxsw_sp*,int) ;
 int mlxsw_sp1_ptp_unmatched_free_fn ;
 int mlxsw_sp_ptp_mtptpt_set (struct mlxsw_sp*,int ,int ) ;
 int rhltable_free_and_destroy (int *,int *,int *) ;

void mlxsw_sp1_ptp_fini(struct mlxsw_sp_ptp_state *ptp_state)
{
 struct mlxsw_sp *mlxsw_sp = ptp_state->mlxsw_sp;

 cancel_delayed_work_sync(&ptp_state->ht_gc_dw);
 mlxsw_sp1_ptp_mtpppc_set(mlxsw_sp, 0, 0);
 mlxsw_sp1_ptp_set_fifo_clr_on_trap(mlxsw_sp, 0);
 mlxsw_sp_ptp_mtptpt_set(mlxsw_sp, MLXSW_REG_MTPTPT_TRAP_ID_PTP1, 0);
 mlxsw_sp_ptp_mtptpt_set(mlxsw_sp, MLXSW_REG_MTPTPT_TRAP_ID_PTP0, 0);
 rhltable_free_and_destroy(&ptp_state->unmatched_ht,
      &mlxsw_sp1_ptp_unmatched_free_fn, ((void*)0));
 kfree(ptp_state);
}
