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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct mlxsw_i2c {TYPE_1__ cmd; int /*<<< orphan*/  core; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct mlxsw_i2c* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct mlxsw_i2c *mlxsw_i2c = FUNC0(client);

	FUNC1(mlxsw_i2c->core, false);
	FUNC2(&mlxsw_i2c->cmd.lock);

	return 0;
}