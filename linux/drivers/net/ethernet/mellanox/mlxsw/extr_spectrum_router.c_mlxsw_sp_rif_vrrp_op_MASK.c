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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RITR_LEN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ritr ; 

__attribute__((used)) static int FUNC8(struct mlxsw_sp *mlxsw_sp, u16 rif_index,
				const u8 *mac, bool adding)
{
	char ritr_pl[MLXSW_REG_RITR_LEN];
	u8 vrrp_id = adding ? mac[5] : 0;
	int err;

	if (!FUNC6(mac) &&
	    !FUNC7(mac))
		return 0;

	FUNC4(ritr_pl, rif_index);
	err = FUNC1(mlxsw_sp->core, FUNC0(ritr), ritr_pl);
	if (err)
		return err;

	if (FUNC6(mac))
		FUNC2(ritr_pl, vrrp_id);
	else
		FUNC3(ritr_pl, vrrp_id);

	return FUNC5(mlxsw_sp->core, FUNC0(ritr), ritr_pl);
}