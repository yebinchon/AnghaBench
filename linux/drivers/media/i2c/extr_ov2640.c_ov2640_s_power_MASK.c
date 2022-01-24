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
struct v4l2_subdev {int dummy; } ;
struct ov2640_priv {int power_count; int /*<<< orphan*/  lock; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ov2640_priv*,int) ; 
 struct ov2640_priv* FUNC4 (struct i2c_client*) ; 
 struct i2c_client* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int on)
{
	struct i2c_client *client = FUNC5(sd);
	struct ov2640_priv *priv = FUNC4(client);

	FUNC1(&priv->lock);

	/*
	 * If the power count is modified from 0 to != 0 or from != 0 to 0,
	 * update the power state.
	 */
	if (priv->power_count == !on)
		FUNC3(priv, on);
	priv->power_count += on ? 1 : -1;
	FUNC0(priv->power_count < 0);
	FUNC2(&priv->lock);

	return 0;
}