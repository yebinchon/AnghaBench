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
struct net_device {int dummy; } ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp_mr_vif {int /*<<< orphan*/  dev; } ;
struct mlxsw_sp_mr_table {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sp_mr_vif* FUNC0 (struct mlxsw_sp_mr_table*,struct net_device const*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_mr_table*,int /*<<< orphan*/ ,struct mlxsw_sp_mr_vif*) ; 
 struct net_device* FUNC2 (struct mlxsw_sp_rif const*) ; 

void FUNC3(struct mlxsw_sp_mr_table *mr_table,
			 const struct mlxsw_sp_rif *rif)
{
	const struct net_device *rif_dev = FUNC2(rif);
	struct mlxsw_sp_mr_vif *mr_vif;

	if (!rif_dev)
		return;

	mr_vif = FUNC0(mr_table, rif_dev);
	if (!mr_vif)
		return;
	FUNC1(mr_table, mr_vif->dev, mr_vif);
}