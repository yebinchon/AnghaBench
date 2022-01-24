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
struct mlxsw_sp_neigh_entry {int dummy; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 char* MLXSW_SP_DPIPE_TABLE_NAME_HOST4 ; 
 char* MLXSW_SP_DPIPE_TABLE_NAME_HOST6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct devlink*,char const*) ; 
 int FUNC2 (struct mlxsw_sp_neigh_entry*) ; 
 struct devlink* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(struct mlxsw_sp *mlxsw_sp,
				    struct mlxsw_sp_neigh_entry *neigh_entry)
{
	struct devlink *devlink;
	const char *table_name;

	switch (FUNC2(neigh_entry)) {
	case AF_INET:
		table_name = MLXSW_SP_DPIPE_TABLE_NAME_HOST4;
		break;
	case AF_INET6:
		table_name = MLXSW_SP_DPIPE_TABLE_NAME_HOST6;
		break;
	default:
		FUNC0(1);
		return false;
	}

	devlink = FUNC3(mlxsw_sp->core);
	return FUNC1(devlink, table_name);
}