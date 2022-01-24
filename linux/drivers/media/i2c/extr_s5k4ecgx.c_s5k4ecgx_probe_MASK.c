#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  function; } ;
struct v4l2_subdev {TYPE_1__ entity; int /*<<< orphan*/  flags; int /*<<< orphan*/ * internal_ops; int /*<<< orphan*/  name; } ;
struct s5k4ecgx_platform_data {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct s5k4ecgx {struct v4l2_subdev sd; int /*<<< orphan*/ * curr_frmsize; int /*<<< orphan*/ * curr_pixfmt; TYPE_5__* supplies; TYPE_2__ pad; scalar_t__ streaming; int /*<<< orphan*/  lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_10__ {struct s5k4ecgx_platform_data* platform_data; } ;
struct i2c_client {TYPE_4__ dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  S5K4ECGX_DRIVER_NAME ; 
 int S5K4ECGX_NUM_SUPPLIES ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 struct s5k4ecgx* FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct s5k4ecgx*,struct s5k4ecgx_platform_data*) ; 
 int /*<<< orphan*/ * s5k4ecgx_formats ; 
 int /*<<< orphan*/  FUNC7 (struct s5k4ecgx*) ; 
 int FUNC8 (struct s5k4ecgx*) ; 
 int /*<<< orphan*/  s5k4ecgx_ops ; 
 int /*<<< orphan*/ * s5k4ecgx_prev_sizes ; 
 int /*<<< orphan*/  s5k4ecgx_subdev_internal_ops ; 
 int /*<<< orphan*/ * s5k4ecgx_supply_names ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct s5k4ecgx_platform_data *pdata = client->dev.platform_data;
	struct v4l2_subdev *sd;
	struct s5k4ecgx *priv;
	int ret, i;

	if (pdata == NULL) {
		FUNC0(&client->dev, "platform data is missing!\n");
		return -EINVAL;
	}

	priv = FUNC1(&client->dev, sizeof(struct s5k4ecgx), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC5(&priv->lock);
	priv->streaming = 0;

	sd = &priv->sd;
	/* Registering subdev */
	FUNC10(sd, client, &s5k4ecgx_ops);
	/* Static name; NEVER use in new drivers! */
	FUNC9(sd->name, S5K4ECGX_DRIVER_NAME, sizeof(sd->name));

	sd->internal_ops = &s5k4ecgx_subdev_internal_ops;
	/* Support v4l2 sub-device user space API */
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	priv->pad.flags = MEDIA_PAD_FL_SOURCE;
	sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
	ret = FUNC4(&sd->entity, 1, &priv->pad);
	if (ret)
		return ret;

	ret = FUNC6(priv, pdata);
	if (ret) {
		FUNC0(&client->dev, "Failed to set gpios\n");
		goto out_err1;
	}
	for (i = 0; i < S5K4ECGX_NUM_SUPPLIES; i++)
		priv->supplies[i].supply = s5k4ecgx_supply_names[i];

	ret = FUNC2(&client->dev, S5K4ECGX_NUM_SUPPLIES,
				 priv->supplies);
	if (ret) {
		FUNC0(&client->dev, "Failed to get regulators\n");
		goto out_err2;
	}
	ret = FUNC8(priv);
	if (ret)
		goto out_err2;

	priv->curr_pixfmt = &s5k4ecgx_formats[0];
	priv->curr_frmsize = &s5k4ecgx_prev_sizes[0];

	return 0;

out_err2:
	FUNC7(priv);
out_err1:
	FUNC3(&priv->sd.entity);

	return ret;
}