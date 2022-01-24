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
struct mlxsw_sp_port {int dummy; } ;

/* Variables and functions */
 int IEEE_8021QAZ_MAX_TCS ; 
 int /*<<< orphan*/  MLXSW_REG_QEEC_HIERARCY_GROUP ; 
 int /*<<< orphan*/  MLXSW_REG_QEEC_HIERARCY_PORT ; 
 int /*<<< orphan*/  MLXSW_REG_QEEC_HIERARCY_SUBGROUP ; 
 int /*<<< orphan*/  MLXSW_REG_QEEC_HIERARCY_TC ; 
 int /*<<< orphan*/  MLXSW_REG_QEEC_MAS_DIS ; 
 int /*<<< orphan*/  MLXSW_REG_QEEC_MIS_MIN ; 
 int FUNC0 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC2 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_sp_port*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp_port *mlxsw_sp_port)
{
	int err, i;

	/* Setup the elements hierarcy, so that each TC is linked to
	 * one subgroup, which are all member in the same group.
	 */
	err = FUNC1(mlxsw_sp_port,
				    MLXSW_REG_QEEC_HIERARCY_GROUP, 0, 0, false,
				    0);
	if (err)
		return err;
	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
		err = FUNC1(mlxsw_sp_port,
					    MLXSW_REG_QEEC_HIERARCY_SUBGROUP, i,
					    0, false, 0);
		if (err)
			return err;
	}
	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
		err = FUNC1(mlxsw_sp_port,
					    MLXSW_REG_QEEC_HIERARCY_TC, i, i,
					    false, 0);
		if (err)
			return err;

		err = FUNC1(mlxsw_sp_port,
					    MLXSW_REG_QEEC_HIERARCY_TC,
					    i + 8, i,
					    true, 100);
		if (err)
			return err;
	}

	/* Make sure the max shaper is disabled in all hierarchies that support
	 * it. Note that this disables ptps (PTP shaper), but that is intended
	 * for the initial configuration.
	 */
	err = FUNC0(mlxsw_sp_port,
					    MLXSW_REG_QEEC_HIERARCY_PORT, 0, 0,
					    MLXSW_REG_QEEC_MAS_DIS);
	if (err)
		return err;
	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
		err = FUNC0(mlxsw_sp_port,
						    MLXSW_REG_QEEC_HIERARCY_SUBGROUP,
						    i, 0,
						    MLXSW_REG_QEEC_MAS_DIS);
		if (err)
			return err;
	}
	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
		err = FUNC0(mlxsw_sp_port,
						    MLXSW_REG_QEEC_HIERARCY_TC,
						    i, i,
						    MLXSW_REG_QEEC_MAS_DIS);
		if (err)
			return err;

		err = FUNC0(mlxsw_sp_port,
						    MLXSW_REG_QEEC_HIERARCY_TC,
						    i + 8, i,
						    MLXSW_REG_QEEC_MAS_DIS);
		if (err)
			return err;
	}

	/* Configure the min shaper for multicast TCs. */
	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
		err = FUNC2(mlxsw_sp_port,
					       MLXSW_REG_QEEC_HIERARCY_TC,
					       i + 8, i,
					       MLXSW_REG_QEEC_MIS_MIN);
		if (err)
			return err;
	}

	/* Map all priorities to traffic class 0. */
	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
		err = FUNC3(mlxsw_sp_port, i, 0);
		if (err)
			return err;
	}

	return 0;
}