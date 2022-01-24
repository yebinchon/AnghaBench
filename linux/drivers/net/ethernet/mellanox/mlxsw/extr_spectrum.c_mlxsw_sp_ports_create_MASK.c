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
typedef  int u8 ;
struct mlxsw_sp_port {int dummy; } ;
struct mlxsw_sp {int* ports; int* port_to_module; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*) ; 
 int FUNC6 (struct mlxsw_sp*,int,int,int,int,int) ; 
 scalar_t__ FUNC7 (struct mlxsw_sp*,int) ; 
 int FUNC8 (struct mlxsw_sp*,int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp*,int) ; 

__attribute__((used)) static int FUNC10(struct mlxsw_sp *mlxsw_sp)
{
	unsigned int max_ports = FUNC3(mlxsw_sp->core);
	u8 module, width, lane;
	size_t alloc_size;
	int i;
	int err;

	alloc_size = sizeof(struct mlxsw_sp_port *) * max_ports;
	mlxsw_sp->ports = FUNC2(alloc_size, GFP_KERNEL);
	if (!mlxsw_sp->ports)
		return -ENOMEM;

	mlxsw_sp->port_to_module = FUNC1(max_ports, sizeof(int),
						 GFP_KERNEL);
	if (!mlxsw_sp->port_to_module) {
		err = -ENOMEM;
		goto err_port_to_module_alloc;
	}

	err = FUNC4(mlxsw_sp);
	if (err)
		goto err_cpu_port_create;

	for (i = 1; i < max_ports; i++) {
		/* Mark as invalid */
		mlxsw_sp->port_to_module[i] = -1;

		err = FUNC8(mlxsw_sp, i, &module,
						    &width, &lane);
		if (err)
			goto err_port_module_info_get;
		if (!width)
			continue;
		mlxsw_sp->port_to_module[i] = module;
		err = FUNC6(mlxsw_sp, i, false,
					   module, width, lane);
		if (err)
			goto err_port_create;
	}
	return 0;

err_port_create:
err_port_module_info_get:
	for (i--; i >= 1; i--)
		if (FUNC7(mlxsw_sp, i))
			FUNC9(mlxsw_sp, i);
	FUNC5(mlxsw_sp);
err_cpu_port_create:
	FUNC0(mlxsw_sp->port_to_module);
err_port_to_module_alloc:
	FUNC0(mlxsw_sp->ports);
	return err;
}