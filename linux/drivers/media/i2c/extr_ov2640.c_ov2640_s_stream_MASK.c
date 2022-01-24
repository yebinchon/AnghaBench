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
struct ov2640_priv {int streaming; int /*<<< orphan*/  lock; int /*<<< orphan*/  hdl; int /*<<< orphan*/  cfmt_code; int /*<<< orphan*/  win; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ov2640_priv* FUNC4 (struct i2c_client*) ; 
 struct i2c_client* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int on)
{
	struct i2c_client *client = FUNC5(sd);
	struct ov2640_priv *priv = FUNC4(client);
	int ret = 0;

	FUNC1(&priv->lock);
	if (priv->streaming == !on) {
		if (on) {
			ret = FUNC3(client, priv->win,
						priv->cfmt_code);
			if (!ret)
				ret = FUNC0(&priv->hdl);
		}
	}
	if (!ret)
		priv->streaming = on;
	FUNC2(&priv->lock);

	return ret;
}