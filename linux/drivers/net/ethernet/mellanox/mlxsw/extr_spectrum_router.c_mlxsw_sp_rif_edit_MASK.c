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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RITR_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_RITR_RIF_CREATE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ritr ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sp *mlxsw_sp, u16 rif_index,
			     const char *mac, int mtu)
{
	char ritr_pl[MLXSW_REG_RITR_LEN];
	int err;

	FUNC5(ritr_pl, rif_index);
	err = FUNC1(mlxsw_sp->core, FUNC0(ritr), ritr_pl);
	if (err)
		return err;

	FUNC3(ritr_pl, mtu);
	FUNC2(ritr_pl, mac);
	FUNC4(ritr_pl, MLXSW_REG_RITR_RIF_CREATE);
	return FUNC6(mlxsw_sp->core, FUNC0(ritr), ritr_pl);
}