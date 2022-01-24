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
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_DPIPE_TABLE_NAME_HOST4 ; 
 int /*<<< orphan*/  FUNC0 (struct devlink*,int /*<<< orphan*/ ) ; 
 struct devlink* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mlxsw_sp *mlxsw_sp)
{
	struct devlink *devlink = FUNC1(mlxsw_sp->core);

	FUNC0(devlink,
				       MLXSW_SP_DPIPE_TABLE_NAME_HOST4);
}