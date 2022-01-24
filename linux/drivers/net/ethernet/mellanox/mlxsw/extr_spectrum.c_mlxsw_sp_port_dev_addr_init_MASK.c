#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp_port {scalar_t__ local_port; TYPE_1__* dev; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  base_mac; } ;
struct TYPE_2__ {unsigned char* dev_addr; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlxsw_sp_port*,unsigned char*) ; 

__attribute__((used)) static int FUNC2(struct mlxsw_sp_port *mlxsw_sp_port)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	unsigned char *addr = mlxsw_sp_port->dev->dev_addr;

	FUNC0(addr, mlxsw_sp->base_mac);
	addr[ETH_ALEN - 1] += mlxsw_sp_port->local_port;
	return FUNC1(mlxsw_sp_port, addr);
}