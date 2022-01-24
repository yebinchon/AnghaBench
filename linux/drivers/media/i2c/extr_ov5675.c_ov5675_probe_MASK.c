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
struct TYPE_7__ {int /*<<< orphan*/  function; int /*<<< orphan*/ * ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  ctrl_handler; TYPE_3__ entity; int /*<<< orphan*/  flags; int /*<<< orphan*/ * internal_ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct ov5675 {int /*<<< orphan*/  mutex; TYPE_1__ sd; TYPE_4__ pad; int /*<<< orphan*/ * cur_mode; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct ov5675* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ov5675*) ; 
 int FUNC8 (struct ov5675*) ; 
 int /*<<< orphan*/  ov5675_internal_ops ; 
 int /*<<< orphan*/  ov5675_subdev_entity_ops ; 
 int /*<<< orphan*/  ov5675_subdev_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * supported_modes ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client)
{
	struct ov5675 *ov5675;
	int ret;

	ret = FUNC6(&client->dev);
	if (ret) {
		FUNC0(&client->dev, "failed to check HW configuration: %d",
			ret);
		return ret;
	}

	ov5675 = FUNC1(&client->dev, sizeof(*ov5675), GFP_KERNEL);
	if (!ov5675)
		return -ENOMEM;

	FUNC14(&ov5675->sd, client, &ov5675_subdev_ops);
	ret = FUNC7(ov5675);
	if (ret) {
		FUNC0(&client->dev, "failed to find sensor: %d", ret);
		return ret;
	}

	FUNC5(&ov5675->mutex);
	ov5675->cur_mode = &supported_modes[0];
	ret = FUNC8(ov5675);
	if (ret) {
		FUNC0(&client->dev, "failed to init controls: %d", ret);
		goto probe_error_v4l2_ctrl_handler_free;
	}

	ov5675->sd.internal_ops = &ov5675_internal_ops;
	ov5675->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
	ov5675->sd.entity.ops = &ov5675_subdev_entity_ops;
	ov5675->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;
	ov5675->pad.flags = MEDIA_PAD_FL_SOURCE;
	ret = FUNC3(&ov5675->sd.entity, 1, &ov5675->pad);
	if (ret) {
		FUNC0(&client->dev, "failed to init entity pads: %d", ret);
		goto probe_error_v4l2_ctrl_handler_free;
	}

	ret = FUNC12(&ov5675->sd);
	if (ret < 0) {
		FUNC0(&client->dev, "failed to register V4L2 subdev: %d",
			ret);
		goto probe_error_media_entity_cleanup;
	}

	/*
	 * Device is already turned on by i2c-core with ACPI domain PM.
	 * Enable runtime PM and turn off the device.
	 */
	FUNC11(&client->dev);
	FUNC9(&client->dev);
	FUNC10(&client->dev);

	return 0;

probe_error_media_entity_cleanup:
	FUNC2(&ov5675->sd.entity);

probe_error_v4l2_ctrl_handler_free:
	FUNC13(ov5675->sd.ctrl_handler);
	FUNC4(&ov5675->mutex);

	return ret;
}