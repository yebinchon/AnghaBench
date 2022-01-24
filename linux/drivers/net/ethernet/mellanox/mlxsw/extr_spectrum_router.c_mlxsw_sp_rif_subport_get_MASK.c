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
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_rif_subport {int /*<<< orphan*/  ref_count; } ;
struct mlxsw_sp_rif_params {int /*<<< orphan*/  dev; } ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sp_rif* FUNC0 (struct mlxsw_sp*,struct mlxsw_sp_rif_params const*,struct netlink_ext_ack*) ; 
 struct mlxsw_sp_rif* FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_rif_subport* FUNC2 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlxsw_sp_rif *
FUNC4(struct mlxsw_sp *mlxsw_sp,
			 const struct mlxsw_sp_rif_params *params,
			 struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_rif_subport *rif_subport;
	struct mlxsw_sp_rif *rif;

	rif = FUNC1(mlxsw_sp, params->dev);
	if (!rif)
		return FUNC0(mlxsw_sp, params, extack);

	rif_subport = FUNC2(rif);
	FUNC3(&rif_subport->ref_count);
	return rif;
}