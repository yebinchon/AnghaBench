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
struct mlxsw_sp_acl_tcam_ventry {struct mlxsw_sp_acl_tcam_entry* entry; } ;
struct mlxsw_sp_acl_tcam_entry {struct mlxsw_sp_acl_tcam_chunk* chunk; } ;
struct mlxsw_sp_acl_tcam_chunk {int dummy; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_acl_tcam_entry*) ; 
 int FUNC1 (struct mlxsw_sp_acl_tcam_entry*) ; 
 struct mlxsw_sp_acl_tcam_entry* FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_ventry*,struct mlxsw_sp_acl_tcam_chunk*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_entry*) ; 

__attribute__((used)) static int
FUNC4(struct mlxsw_sp *mlxsw_sp,
				 struct mlxsw_sp_acl_tcam_ventry *ventry,
				 struct mlxsw_sp_acl_tcam_chunk *chunk,
				 int *credits)
{
	struct mlxsw_sp_acl_tcam_entry *new_entry;

	/* First check if the entry is not already where we want it to be. */
	if (ventry->entry->chunk == chunk)
		return 0;

	if (--(*credits) < 0)
		return 0;

	new_entry = FUNC2(mlxsw_sp, ventry, chunk);
	if (FUNC0(new_entry))
		return FUNC1(new_entry);
	FUNC3(mlxsw_sp, ventry->entry);
	ventry->entry = new_entry;
	return 0;
}