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
struct objagg_obj {int dummy; } ;
struct mlxsw_sp_acl_erp_mask {int dummy; } ;
struct mlxsw_sp_acl_erp_delta {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sp_acl_erp_delta mlxsw_sp_acl_erp_delta_default ; 
 struct mlxsw_sp_acl_erp_delta* FUNC0 (struct objagg_obj*) ; 

const struct mlxsw_sp_acl_erp_delta *
FUNC1(const struct mlxsw_sp_acl_erp_mask *erp_mask)
{
	struct objagg_obj *objagg_obj = (struct objagg_obj *) erp_mask;
	const struct mlxsw_sp_acl_erp_delta *delta;

	delta = FUNC0(objagg_obj);
	if (!delta)
		delta = &mlxsw_sp_acl_erp_delta_default;
	return delta;
}