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
struct mlxsw_sp_nve_mc_record {int dummy; } ;
struct mlxsw_sp_nve_mc_list {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_nve_mc_record*) ; 
 int FUNC1 (struct mlxsw_sp_nve_mc_record*) ; 
 struct mlxsw_sp_nve_mc_record* FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_nve_mc_list*,int) ; 
 int FUNC3 (struct mlxsw_sp_nve_mc_record*,union mlxsw_sp_l3addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_nve_mc_record*) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sp *mlxsw_sp,
				       struct mlxsw_sp_nve_mc_list *mc_list,
				       enum mlxsw_sp_l3proto proto,
				       union mlxsw_sp_l3addr *addr)
{
	struct mlxsw_sp_nve_mc_record *mc_record;
	int err;

	mc_record = FUNC2(mlxsw_sp, mc_list, proto);
	if (FUNC0(mc_record))
		return FUNC1(mc_record);

	err = FUNC3(mc_record, addr);
	if (err)
		goto err_ip_add;

	return 0;

err_ip_add:
	FUNC4(mc_record);
	return err;
}