#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct mlxsw_sp_ptp_state {int /*<<< orphan*/  unmatched_ht; int /*<<< orphan*/  ht_gc_dw; int /*<<< orphan*/  unmatched_lock; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct mlxsw_sp_ptp_state* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_MTPTPT_TRAP_ID_PTP0 ; 
 int /*<<< orphan*/  MLXSW_REG_MTPTPT_TRAP_ID_PTP1 ; 
 int /*<<< orphan*/  MLXSW_SP1_PTP_HT_GC_INTERVAL ; 
 int /*<<< orphan*/  MLXSW_SP_PTP_MESSAGE_TYPE_DELAY_REQ ; 
 int /*<<< orphan*/  MLXSW_SP_PTP_MESSAGE_TYPE_PDELAY_REQ ; 
 int /*<<< orphan*/  MLXSW_SP_PTP_MESSAGE_TYPE_PDELAY_RESP ; 
 int /*<<< orphan*/  MLXSW_SP_PTP_MESSAGE_TYPE_SYNC ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_ptp_state*) ; 
 struct mlxsw_sp_ptp_state* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp1_ptp_ht_gc ; 
 int FUNC6 (struct mlxsw_sp*,int) ; 
 int FUNC7 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  mlxsw_sp1_ptp_unmatched_ht_params ; 
 int FUNC8 (struct mlxsw_sp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct mlxsw_sp_ptp_state *FUNC12(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_ptp_state *ptp_state;
	u16 message_type;
	int err;

	err = FUNC7(mlxsw_sp);
	if (err)
		return FUNC1(err);

	ptp_state = FUNC4(sizeof(*ptp_state), GFP_KERNEL);
	if (!ptp_state)
		return FUNC1(-ENOMEM);
	ptp_state->mlxsw_sp = mlxsw_sp;

	FUNC11(&ptp_state->unmatched_lock);

	err = FUNC10(&ptp_state->unmatched_ht,
			    &mlxsw_sp1_ptp_unmatched_ht_params);
	if (err)
		goto err_hashtable_init;

	/* Delive these message types as PTP0. */
	message_type = FUNC0(MLXSW_SP_PTP_MESSAGE_TYPE_SYNC) |
		       FUNC0(MLXSW_SP_PTP_MESSAGE_TYPE_DELAY_REQ) |
		       FUNC0(MLXSW_SP_PTP_MESSAGE_TYPE_PDELAY_REQ) |
		       FUNC0(MLXSW_SP_PTP_MESSAGE_TYPE_PDELAY_RESP);
	err = FUNC8(mlxsw_sp, MLXSW_REG_MTPTPT_TRAP_ID_PTP0,
				      message_type);
	if (err)
		goto err_mtptpt_set;

	/* Everything else is PTP1. */
	message_type = ~message_type;
	err = FUNC8(mlxsw_sp, MLXSW_REG_MTPTPT_TRAP_ID_PTP1,
				      message_type);
	if (err)
		goto err_mtptpt1_set;

	err = FUNC6(mlxsw_sp, true);
	if (err)
		goto err_fifo_clr;

	FUNC2(&ptp_state->ht_gc_dw, mlxsw_sp1_ptp_ht_gc);
	FUNC5(&ptp_state->ht_gc_dw,
			       MLXSW_SP1_PTP_HT_GC_INTERVAL);
	return ptp_state;

err_fifo_clr:
	FUNC8(mlxsw_sp, MLXSW_REG_MTPTPT_TRAP_ID_PTP1, 0);
err_mtptpt1_set:
	FUNC8(mlxsw_sp, MLXSW_REG_MTPTPT_TRAP_ID_PTP0, 0);
err_mtptpt_set:
	FUNC9(&ptp_state->unmatched_ht);
err_hashtable_init:
	FUNC3(ptp_state);
	return FUNC1(err);
}