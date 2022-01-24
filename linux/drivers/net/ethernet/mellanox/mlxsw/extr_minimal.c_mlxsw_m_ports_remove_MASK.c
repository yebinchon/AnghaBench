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
struct mlxsw_m {int max_ports; scalar_t__* module_to_port; scalar_t__* ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_m*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_m*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_m *mlxsw_m)
{
	int i;

	for (i = 0; i < mlxsw_m->max_ports; i++) {
		if (mlxsw_m->module_to_port[i] > 0) {
			FUNC2(mlxsw_m,
					    mlxsw_m->module_to_port[i]);
			FUNC1(mlxsw_m, i);
		}
	}

	FUNC0(mlxsw_m->module_to_port);
	FUNC0(mlxsw_m->ports);
}