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
struct mlxsw_sp_nve_mc_record {int /*<<< orphan*/  num_entries; int /*<<< orphan*/  kvdl_index; int /*<<< orphan*/  list; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_KVDL_ENTRY_TYPE_TNUMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_nve_mc_record*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct mlxsw_sp_nve_mc_record *mc_record)
{
	struct mlxsw_sp *mlxsw_sp = mc_record->mlxsw_sp;

	FUNC2(&mc_record->list);
	FUNC3(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_TNUMT, 1,
			   mc_record->kvdl_index);
	FUNC0(mc_record->num_entries);
	FUNC1(mc_record);
}