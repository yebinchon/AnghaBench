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
struct mlxsw_sp_acl_profile_ops {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_sp_acl_profile { ____Placeholder_mlxsw_sp_acl_profile } mlxsw_sp_acl_profile ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp_acl_profile_ops**) ; 
 scalar_t__ FUNC1 (int) ; 
 struct mlxsw_sp_acl_profile_ops** mlxsw_sp_acl_tcam_profile_ops_arr ; 

const struct mlxsw_sp_acl_profile_ops *
FUNC2(struct mlxsw_sp *mlxsw_sp,
			      enum mlxsw_sp_acl_profile profile)
{
	const struct mlxsw_sp_acl_profile_ops *ops;

	if (FUNC1(profile >= FUNC0(mlxsw_sp_acl_tcam_profile_ops_arr)))
		return NULL;
	ops = mlxsw_sp_acl_tcam_profile_ops_arr[profile];
	if (FUNC1(!ops))
		return NULL;
	return ops;
}