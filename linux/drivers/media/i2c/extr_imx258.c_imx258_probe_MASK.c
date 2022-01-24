#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  function; } ;
struct TYPE_6__ {TYPE_3__ entity; int /*<<< orphan*/  flags; int /*<<< orphan*/ * internal_ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct imx258 {TYPE_1__ sd; TYPE_4__ pad; int /*<<< orphan*/ * cur_mode; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int*) ; 
 struct imx258* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct imx258*) ; 
 int FUNC3 (struct imx258*) ; 
 int FUNC4 (struct imx258*) ; 
 int /*<<< orphan*/  imx258_internal_ops ; 
 int /*<<< orphan*/  imx258_subdev_ops ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * supported_modes ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client)
{
	struct imx258 *imx258;
	int ret;
	u32 val = 0;

	FUNC0(&client->dev, "clock-frequency", &val);
	if (val != 19200000)
		return -EINVAL;

	/*
	 * Check that the device is mounted upside down. The driver only
	 * supports a single pixel order right now.
	 */
	ret = FUNC0(&client->dev, "rotation", &val);
	if (ret || val != 180)
		return -EINVAL;

	imx258 = FUNC1(&client->dev, sizeof(*imx258), GFP_KERNEL);
	if (!imx258)
		return -ENOMEM;

	/* Initialize subdev */
	FUNC11(&imx258->sd, client, &imx258_subdev_ops);

	/* Check module identity */
	ret = FUNC3(imx258);
	if (ret)
		return ret;

	/* Set default mode to max resolution */
	imx258->cur_mode = &supported_modes[0];

	ret = FUNC4(imx258);
	if (ret)
		return ret;

	/* Initialize subdev */
	imx258->sd.internal_ops = &imx258_internal_ops;
	imx258->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
	imx258->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;

	/* Initialize source pad */
	imx258->pad.flags = MEDIA_PAD_FL_SOURCE;

	ret = FUNC6(&imx258->sd.entity, 1, &imx258->pad);
	if (ret)
		goto error_handler_free;

	ret = FUNC10(&imx258->sd);
	if (ret < 0)
		goto error_media_entity;

	FUNC9(&client->dev);
	FUNC7(&client->dev);
	FUNC8(&client->dev);

	return 0;

error_media_entity:
	FUNC5(&imx258->sd.entity);

error_handler_free:
	FUNC2(imx258);

	return ret;
}