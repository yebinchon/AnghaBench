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
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct mt9m111 {int /*<<< orphan*/  hdl; int /*<<< orphan*/  clk; TYPE_1__ subdev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mt9m111* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct mt9m111 *mt9m111 = FUNC1(client);

	FUNC2(&mt9m111->subdev);
	FUNC0(&mt9m111->subdev.entity);
	FUNC3(mt9m111->clk);
	FUNC4(&mt9m111->hdl);

	return 0;
}