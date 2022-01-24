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
struct mlxsw_sx {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLXSW_PORT_CPU_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID ; 
 int MLXSW_REG_SFGC_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_SFGC_TABLE_TYPE_SINGLE ; 
 int /*<<< orphan*/  MLXSW_REG_SFGC_TYPE_BROADCAST ; 
 int /*<<< orphan*/  MLXSW_REG_SFGC_TYPE_UNKNOWN_UNICAST ; 
 int /*<<< orphan*/  MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_IPV4 ; 
 int /*<<< orphan*/  MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_IPV6 ; 
 int /*<<< orphan*/  MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_NON_IP ; 
 int /*<<< orphan*/  MLXSW_REG_SFTR_LEN ; 
 int MLXSW_REG_SGCR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sfgc ; 
 int /*<<< orphan*/  sftr ; 
 int /*<<< orphan*/  sgcr ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sx *mlxsw_sx)
{
	char sfgc_pl[MLXSW_REG_SFGC_LEN];
	char sgcr_pl[MLXSW_REG_SGCR_LEN];
	char *sftr_pl;
	int err;

	/* Configure a flooding table, which includes only CPU port. */
	sftr_pl = FUNC2(MLXSW_REG_SFTR_LEN, GFP_KERNEL);
	if (!sftr_pl)
		return -ENOMEM;
	FUNC4(sftr_pl, 0, 0, MLXSW_REG_SFGC_TABLE_TYPE_SINGLE, 0,
			    MLXSW_PORT_CPU_PORT, true);
	err = FUNC6(mlxsw_sx->core, FUNC0(sftr), sftr_pl);
	FUNC1(sftr_pl);
	if (err)
		return err;

	/* Flood different packet types using the flooding table. */
	FUNC3(sfgc_pl,
			    MLXSW_REG_SFGC_TYPE_UNKNOWN_UNICAST,
			    MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID,
			    MLXSW_REG_SFGC_TABLE_TYPE_SINGLE,
			    0);
	err = FUNC6(mlxsw_sx->core, FUNC0(sfgc), sfgc_pl);
	if (err)
		return err;

	FUNC3(sfgc_pl,
			    MLXSW_REG_SFGC_TYPE_BROADCAST,
			    MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID,
			    MLXSW_REG_SFGC_TABLE_TYPE_SINGLE,
			    0);
	err = FUNC6(mlxsw_sx->core, FUNC0(sfgc), sfgc_pl);
	if (err)
		return err;

	FUNC3(sfgc_pl,
			    MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_NON_IP,
			    MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID,
			    MLXSW_REG_SFGC_TABLE_TYPE_SINGLE,
			    0);
	err = FUNC6(mlxsw_sx->core, FUNC0(sfgc), sfgc_pl);
	if (err)
		return err;

	FUNC3(sfgc_pl,
			    MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_IPV6,
			    MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID,
			    MLXSW_REG_SFGC_TABLE_TYPE_SINGLE,
			    0);
	err = FUNC6(mlxsw_sx->core, FUNC0(sfgc), sfgc_pl);
	if (err)
		return err;

	FUNC3(sfgc_pl,
			    MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_IPV4,
			    MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID,
			    MLXSW_REG_SFGC_TABLE_TYPE_SINGLE,
			    0);
	err = FUNC6(mlxsw_sx->core, FUNC0(sfgc), sfgc_pl);
	if (err)
		return err;

	FUNC5(sgcr_pl, true);
	return FUNC6(mlxsw_sx->core, FUNC0(sgcr), sgcr_pl);
}