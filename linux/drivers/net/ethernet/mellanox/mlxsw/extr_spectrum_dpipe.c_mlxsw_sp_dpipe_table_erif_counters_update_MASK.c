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
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_RIFS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_SP_RIF_COUNTER_EGRESS ; 
 struct mlxsw_sp_rif* FUNC1 (struct mlxsw_sp*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_rif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_rif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(void *priv, bool enable)
{
	struct mlxsw_sp *mlxsw_sp = priv;
	int i;

	FUNC4();
	for (i = 0; i < FUNC0(mlxsw_sp->core, MAX_RIFS); i++) {
		struct mlxsw_sp_rif *rif = FUNC1(mlxsw_sp, i);

		if (!rif)
			continue;
		if (enable)
			FUNC2(mlxsw_sp, rif,
						   MLXSW_SP_RIF_COUNTER_EGRESS);
		else
			FUNC3(mlxsw_sp, rif,
						  MLXSW_SP_RIF_COUNTER_EGRESS);
	}
	FUNC5();
	return 0;
}