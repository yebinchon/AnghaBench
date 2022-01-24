#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct TYPE_3__ {int sysctl_ip_fwd_update_priority; } ;
struct TYPE_4__ {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MAX_RIFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RGCR_LEN ; 
 TYPE_2__ init_net ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rgcr ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sp *mlxsw_sp)
{
	bool usp = init_net.ipv4.sysctl_ip_fwd_update_priority;
	char rgcr_pl[MLXSW_REG_RGCR_LEN];
	u64 max_rifs;
	int err;

	if (!FUNC1(mlxsw_sp->core, MAX_RIFS))
		return -EIO;
	max_rifs = FUNC0(mlxsw_sp->core, MAX_RIFS);

	FUNC4(rgcr_pl, true, true);
	FUNC3(rgcr_pl, max_rifs);
	FUNC5(rgcr_pl, usp);
	err = FUNC6(mlxsw_sp->core, FUNC2(rgcr), rgcr_pl);
	if (err)
		return err;
	return 0;
}