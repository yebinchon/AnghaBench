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
typedef  size_t vifi_t ;
struct net_device {int dummy; } ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp_mr_vif {scalar_t__ dev; } ;
struct mlxsw_sp_mr_table {struct mlxsw_sp_mr_vif* vifs; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 size_t MAXVIFS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct mlxsw_sp_mr_table*,struct net_device*,struct mlxsw_sp_mr_vif*,unsigned long,struct mlxsw_sp_rif const*) ; 

int FUNC2(struct mlxsw_sp_mr_table *mr_table,
			struct net_device *dev, vifi_t vif_index,
			unsigned long vif_flags, const struct mlxsw_sp_rif *rif)
{
	struct mlxsw_sp_mr_vif *mr_vif = &mr_table->vifs[vif_index];

	if (FUNC0(vif_index >= MAXVIFS))
		return -EINVAL;
	if (mr_vif->dev)
		return -EEXIST;
	return FUNC1(mr_table, dev, mr_vif, vif_flags, rif);
}