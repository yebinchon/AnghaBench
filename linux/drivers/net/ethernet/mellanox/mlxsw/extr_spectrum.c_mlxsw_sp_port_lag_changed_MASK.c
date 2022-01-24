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
struct netdev_lag_lower_state_info {scalar_t__ tx_enabled; } ;
struct mlxsw_sp_port {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp_port*) ; 
 int FUNC1 (struct mlxsw_sp_port*) ; 

__attribute__((used)) static int FUNC2(struct mlxsw_sp_port *mlxsw_sp_port,
				     struct netdev_lag_lower_state_info *info)
{
	if (info->tx_enabled)
		return FUNC1(mlxsw_sp_port);
	else
		return FUNC0(mlxsw_sp_port);
}