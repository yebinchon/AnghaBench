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
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_rif* FUNC1 (struct mlxsw_sp*,struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct mlxsw_sp *mlxsw_sp,
				    struct net_device *l3_dev)
{
	struct mlxsw_sp_rif *rif;

	rif = FUNC1(mlxsw_sp, l3_dev);
	if (!rif)
		return;
	FUNC0(mlxsw_sp, l3_dev, NETDEV_DOWN, NULL);
}