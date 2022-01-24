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
typedef  union mlxsw_sp_l3addr {int dummy; } mlxsw_sp_l3addr ;
struct mlxsw_sp_nve_mc_list_key {int /*<<< orphan*/  fid_index; int /*<<< orphan*/  member_0; } ;
struct mlxsw_sp_nve_mc_list {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_fid*,struct mlxsw_sp_nve_mc_list*) ; 
 struct mlxsw_sp_nve_mc_list* FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_nve_mc_list_key*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_nve_mc_list*,int,union mlxsw_sp_l3addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_nve_mc_list*) ; 

void FUNC5(struct mlxsw_sp *mlxsw_sp,
			       struct mlxsw_sp_fid *fid,
			       enum mlxsw_sp_l3proto proto,
			       union mlxsw_sp_l3addr *addr)
{
	struct mlxsw_sp_nve_mc_list_key key = { 0 };
	struct mlxsw_sp_nve_mc_list *mc_list;

	key.fid_index = FUNC0(fid);
	mc_list = FUNC2(mlxsw_sp, &key);
	if (!mc_list)
		return;

	FUNC1(fid, mc_list);
	FUNC3(mlxsw_sp, mc_list, proto, addr);
	FUNC4(mlxsw_sp, mc_list);
}