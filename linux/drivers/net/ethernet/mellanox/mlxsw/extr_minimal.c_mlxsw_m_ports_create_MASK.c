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
typedef  unsigned int u8 ;
struct mlxsw_m {int* ports; int* module_to_port; int max_ports; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlxsw_m*,int,int) ; 
 int FUNC5 (struct mlxsw_m*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_m*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_m*,int) ; 

__attribute__((used)) static int FUNC8(struct mlxsw_m *mlxsw_m)
{
	unsigned int max_ports = FUNC3(mlxsw_m->core);
	u8 last_module = max_ports;
	int i;
	int err;

	mlxsw_m->ports = FUNC0(max_ports, sizeof(*mlxsw_m->ports),
				 GFP_KERNEL);
	if (!mlxsw_m->ports)
		return -ENOMEM;

	mlxsw_m->module_to_port = FUNC2(max_ports, sizeof(int),
						GFP_KERNEL);
	if (!mlxsw_m->module_to_port) {
		err = -ENOMEM;
		goto err_module_to_port_alloc;
	}

	/* Invalidate the entries of module to local port mapping array */
	for (i = 0; i < max_ports; i++)
		mlxsw_m->module_to_port[i] = -1;

	/* Fill out module to local port mapping array */
	for (i = 1; i < max_ports; i++) {
		err = FUNC5(mlxsw_m, i, &last_module);
		if (err)
			goto err_module_to_port_map;
	}

	/* Create port objects for each valid entry */
	for (i = 0; i < mlxsw_m->max_ports; i++) {
		if (mlxsw_m->module_to_port[i] > 0) {
			err = FUNC4(mlxsw_m,
						  mlxsw_m->module_to_port[i],
						  i);
			if (err)
				goto err_module_to_port_create;
		}
	}

	return 0;

err_module_to_port_create:
	for (i--; i >= 0; i--) {
		if (mlxsw_m->module_to_port[i] > 0)
			FUNC7(mlxsw_m,
					    mlxsw_m->module_to_port[i]);
	}
	i = max_ports;
err_module_to_port_map:
	for (i--; i > 0; i--)
		FUNC6(mlxsw_m, i);
	FUNC1(mlxsw_m->module_to_port);
err_module_to_port_alloc:
	FUNC1(mlxsw_m->ports);
	return err;
}