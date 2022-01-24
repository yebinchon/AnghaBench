#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp {scalar_t__ clock; TYPE_1__* ptp_ops; int /*<<< orphan*/  ptp_state; int /*<<< orphan*/  netdevice_nb; } ;
struct mlxsw_core {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* clock_fini ) (scalar_t__) ;int /*<<< orphan*/  (* fini ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct mlxsw_sp* FUNC0 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC14 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC15 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct mlxsw_core *mlxsw_core)
{
	struct mlxsw_sp *mlxsw_sp = FUNC0(mlxsw_core);

	FUNC11(mlxsw_sp);
	FUNC6(mlxsw_sp);
	FUNC18(&mlxsw_sp->netdevice_nb);
	if (mlxsw_sp->clock) {
		mlxsw_sp->ptp_ops->fini(mlxsw_sp->ptp_state);
		mlxsw_sp->ptp_ops->clock_fini(mlxsw_sp->clock);
	}
	FUNC12(mlxsw_sp);
	FUNC1(mlxsw_sp);
	FUNC10(mlxsw_sp);
	FUNC2(mlxsw_sp);
	FUNC4(mlxsw_sp);
	FUNC14(mlxsw_sp);
	FUNC13(mlxsw_sp);
	FUNC9(mlxsw_sp);
	FUNC3(mlxsw_sp);
	FUNC5(mlxsw_sp);
	FUNC15(mlxsw_sp);
	FUNC7(mlxsw_sp);
	FUNC8(mlxsw_sp);
}