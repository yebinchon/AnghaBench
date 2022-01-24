#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct ov772x_priv {int streaming; int /*<<< orphan*/  lock; TYPE_2__* win; TYPE_1__* cfmt; int /*<<< orphan*/  regmap; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  COM2 ; 
 int /*<<< orphan*/  SOFT_SLEEP_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ov772x_priv* FUNC4 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int enable)
{
	struct i2c_client *client = FUNC5(sd);
	struct ov772x_priv *priv = FUNC4(sd);
	int ret = 0;

	FUNC1(&priv->lock);

	if (priv->streaming == enable)
		goto done;

	ret = FUNC3(priv->regmap, COM2, SOFT_SLEEP_MODE,
				 enable ? 0 : SOFT_SLEEP_MODE);
	if (ret)
		goto done;

	if (enable) {
		FUNC0(&client->dev, "format %d, win %s\n",
			priv->cfmt->code, priv->win->name);
	}
	priv->streaming = enable;

done:
	FUNC2(&priv->lock);

	return ret;
}