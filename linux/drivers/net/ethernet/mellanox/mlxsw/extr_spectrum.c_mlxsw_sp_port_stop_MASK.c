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
struct mlxsw_sp_port {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp_port*,int) ; 
 struct mlxsw_sp_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC1(dev);

	FUNC2(dev);
	return FUNC0(mlxsw_sp_port, false);
}