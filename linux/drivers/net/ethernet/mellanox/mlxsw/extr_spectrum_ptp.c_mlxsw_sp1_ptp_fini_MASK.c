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
struct mlxsw_sp_ptp_state {int /*<<< orphan*/  unmatched_ht; int /*<<< orphan*/  ht_gc_dw; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_MTPTPT_TRAP_ID_PTP0 ; 
 int /*<<< orphan*/  MLXSW_REG_MTPTPT_TRAP_ID_PTP1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_ptp_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,int) ; 
 int /*<<< orphan*/  mlxsw_sp1_ptp_unmatched_free_fn ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(struct mlxsw_sp_ptp_state *ptp_state)
{
	struct mlxsw_sp *mlxsw_sp = ptp_state->mlxsw_sp;

	FUNC0(&ptp_state->ht_gc_dw);
	FUNC2(mlxsw_sp, 0, 0);
	FUNC3(mlxsw_sp, false);
	FUNC4(mlxsw_sp, MLXSW_REG_MTPTPT_TRAP_ID_PTP1, 0);
	FUNC4(mlxsw_sp, MLXSW_REG_MTPTPT_TRAP_ID_PTP0, 0);
	FUNC5(&ptp_state->unmatched_ht,
				  &mlxsw_sp1_ptp_unmatched_free_fn, NULL);
	FUNC1(ptp_state);
}