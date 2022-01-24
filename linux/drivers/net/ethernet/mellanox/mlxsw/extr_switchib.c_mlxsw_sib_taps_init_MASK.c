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
struct mlxsw_sib {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlxsw_sib*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlxsw_sib*) ; 
 int /*<<< orphan*/ * mlxsw_sib_listener ; 

__attribute__((used)) static int FUNC3(struct mlxsw_sib *mlxsw_sib)
{
	int i;
	int err;

	for (i = 0; i < FUNC0(mlxsw_sib_listener); i++) {
		err = FUNC1(mlxsw_sib->core,
					       &mlxsw_sib_listener[i],
					       mlxsw_sib);
		if (err)
			goto err_rx_listener_register;
	}

	return 0;

err_rx_listener_register:
	for (i--; i >= 0; i--) {
		FUNC2(mlxsw_sib->core,
					   &mlxsw_sib_listener[i],
					   mlxsw_sib);
	}

	return err;
}