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
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*,int) ; 

void
FUNC3(struct mlxsw_sp *mlxsw_sp,
				    struct mlxsw_sp_neigh_entry *neigh_entry,
				    bool adding)
{
	if (adding)
		FUNC0(mlxsw_sp, neigh_entry);
	else
		FUNC1(mlxsw_sp, neigh_entry);
	FUNC2(mlxsw_sp, neigh_entry, true);
}