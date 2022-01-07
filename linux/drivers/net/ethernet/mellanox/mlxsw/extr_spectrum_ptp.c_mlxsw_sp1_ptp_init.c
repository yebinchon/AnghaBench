
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_ptp_state {int unmatched_ht; int ht_gc_dw; int unmatched_lock; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;


 int BIT (int ) ;
 int ENOMEM ;
 struct mlxsw_sp_ptp_state* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int MLXSW_REG_MTPTPT_TRAP_ID_PTP0 ;
 int MLXSW_REG_MTPTPT_TRAP_ID_PTP1 ;
 int MLXSW_SP1_PTP_HT_GC_INTERVAL ;
 int MLXSW_SP_PTP_MESSAGE_TYPE_DELAY_REQ ;
 int MLXSW_SP_PTP_MESSAGE_TYPE_PDELAY_REQ ;
 int MLXSW_SP_PTP_MESSAGE_TYPE_PDELAY_RESP ;
 int MLXSW_SP_PTP_MESSAGE_TYPE_SYNC ;
 int kfree (struct mlxsw_sp_ptp_state*) ;
 struct mlxsw_sp_ptp_state* kzalloc (int,int ) ;
 int mlxsw_core_schedule_dw (int *,int ) ;
 int mlxsw_sp1_ptp_ht_gc ;
 int mlxsw_sp1_ptp_set_fifo_clr_on_trap (struct mlxsw_sp*,int) ;
 int mlxsw_sp1_ptp_shaper_params_set (struct mlxsw_sp*) ;
 int mlxsw_sp1_ptp_unmatched_ht_params ;
 int mlxsw_sp_ptp_mtptpt_set (struct mlxsw_sp*,int ,int) ;
 int rhltable_destroy (int *) ;
 int rhltable_init (int *,int *) ;
 int spin_lock_init (int *) ;

struct mlxsw_sp_ptp_state *mlxsw_sp1_ptp_init(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_ptp_state *ptp_state;
 u16 message_type;
 int err;

 err = mlxsw_sp1_ptp_shaper_params_set(mlxsw_sp);
 if (err)
  return ERR_PTR(err);

 ptp_state = kzalloc(sizeof(*ptp_state), GFP_KERNEL);
 if (!ptp_state)
  return ERR_PTR(-ENOMEM);
 ptp_state->mlxsw_sp = mlxsw_sp;

 spin_lock_init(&ptp_state->unmatched_lock);

 err = rhltable_init(&ptp_state->unmatched_ht,
       &mlxsw_sp1_ptp_unmatched_ht_params);
 if (err)
  goto err_hashtable_init;


 message_type = BIT(MLXSW_SP_PTP_MESSAGE_TYPE_SYNC) |
         BIT(MLXSW_SP_PTP_MESSAGE_TYPE_DELAY_REQ) |
         BIT(MLXSW_SP_PTP_MESSAGE_TYPE_PDELAY_REQ) |
         BIT(MLXSW_SP_PTP_MESSAGE_TYPE_PDELAY_RESP);
 err = mlxsw_sp_ptp_mtptpt_set(mlxsw_sp, MLXSW_REG_MTPTPT_TRAP_ID_PTP0,
          message_type);
 if (err)
  goto err_mtptpt_set;


 message_type = ~message_type;
 err = mlxsw_sp_ptp_mtptpt_set(mlxsw_sp, MLXSW_REG_MTPTPT_TRAP_ID_PTP1,
          message_type);
 if (err)
  goto err_mtptpt1_set;

 err = mlxsw_sp1_ptp_set_fifo_clr_on_trap(mlxsw_sp, 1);
 if (err)
  goto err_fifo_clr;

 INIT_DELAYED_WORK(&ptp_state->ht_gc_dw, mlxsw_sp1_ptp_ht_gc);
 mlxsw_core_schedule_dw(&ptp_state->ht_gc_dw,
          MLXSW_SP1_PTP_HT_GC_INTERVAL);
 return ptp_state;

err_fifo_clr:
 mlxsw_sp_ptp_mtptpt_set(mlxsw_sp, MLXSW_REG_MTPTPT_TRAP_ID_PTP1, 0);
err_mtptpt1_set:
 mlxsw_sp_ptp_mtptpt_set(mlxsw_sp, MLXSW_REG_MTPTPT_TRAP_ID_PTP0, 0);
err_mtptpt_set:
 rhltable_destroy(&ptp_state->unmatched_ht);
err_hashtable_init:
 kfree(ptp_state);
 return ERR_PTR(err);
}
