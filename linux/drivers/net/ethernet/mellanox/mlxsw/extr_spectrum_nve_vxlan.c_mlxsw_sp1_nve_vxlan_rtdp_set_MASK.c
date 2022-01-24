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
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RTDP_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_RTDP_TYPE_NVE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rtdp ; 

__attribute__((used)) static int FUNC3(struct mlxsw_sp *mlxsw_sp,
					unsigned int tunnel_index)
{
	char rtdp_pl[MLXSW_REG_RTDP_LEN];

	FUNC1(rtdp_pl, MLXSW_REG_RTDP_TYPE_NVE, tunnel_index);

	return FUNC2(mlxsw_sp->core, FUNC0(rtdp), rtdp_pl);
}