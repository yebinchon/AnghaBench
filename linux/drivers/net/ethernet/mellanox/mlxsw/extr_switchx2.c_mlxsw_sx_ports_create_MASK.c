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
typedef  int /*<<< orphan*/  u8 ;
struct mlxsw_sx_port {int dummy; } ;
struct mlxsw_sx {int /*<<< orphan*/  ports; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mlxsw_sx*,int) ; 
 int FUNC4 (struct mlxsw_sx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlxsw_sx*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sx*,int) ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sx *mlxsw_sx)
{
	unsigned int max_ports = FUNC2(mlxsw_sx->core);
	size_t alloc_size;
	u8 module, width;
	int i;
	int err;

	alloc_size = sizeof(struct mlxsw_sx_port *) * max_ports;
	mlxsw_sx->ports = FUNC1(alloc_size, GFP_KERNEL);
	if (!mlxsw_sx->ports)
		return -ENOMEM;

	for (i = 1; i < max_ports; i++) {
		err = FUNC5(mlxsw_sx, i, &module,
						    &width);
		if (err)
			goto err_port_module_info_get;
		if (!width)
			continue;
		err = FUNC4(mlxsw_sx, i, module, width);
		if (err)
			goto err_port_create;
	}
	return 0;

err_port_create:
err_port_module_info_get:
	for (i--; i >= 1; i--)
		if (FUNC3(mlxsw_sx, i))
			FUNC6(mlxsw_sx, i);
	FUNC0(mlxsw_sx->ports);
	return err;
}