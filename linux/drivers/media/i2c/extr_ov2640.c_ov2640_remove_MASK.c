#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  entity; } ;
struct ov2640_priv {int /*<<< orphan*/  clk; TYPE_1__ subdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  hdl; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ov2640_priv* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct ov2640_priv       *priv = FUNC3(client);

	FUNC4(&priv->subdev);
	FUNC5(&priv->hdl);
	FUNC2(&priv->lock);
	FUNC1(&priv->subdev.entity);
	FUNC6(&priv->subdev);
	FUNC0(priv->clk);
	return 0;
}