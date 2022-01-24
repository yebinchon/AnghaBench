#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int error; int /*<<< orphan*/ * lock; } ;
struct TYPE_11__ {int /*<<< orphan*/  function; } ;
struct TYPE_10__ {TYPE_5__ entity; struct v4l2_ctrl_handler* ctrl_handler; int /*<<< orphan*/  flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  flags; } ;
struct ov2680_ctrls {void* auto_exp; void* auto_gain; TYPE_2__* exposure; TYPE_1__* gain; int /*<<< orphan*/  test_pattern; void* hflip; void* vflip; struct v4l2_ctrl_handler handler; } ;
struct ov2680_dev {TYPE_3__ sd; int /*<<< orphan*/  lock; TYPE_6__ pad; int /*<<< orphan*/  i2c_client; struct ov2680_ctrls ctrls; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  V4L2_CID_AUTOGAIN ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_TEST_PATTERN ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_CTRL_FLAG_VOLATILE ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_MANUAL ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_5__*,int,TYPE_6__*) ; 
 struct v4l2_ctrl_ops ov2680_ctrl_ops ; 
 int /*<<< orphan*/  ov2680_subdev_ops ; 
 int /*<<< orphan*/  test_pattern_menu ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int,void**,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC7 (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 void* FUNC8 (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct ov2680_dev *sensor)
{
	const struct v4l2_ctrl_ops *ops = &ov2680_ctrl_ops;
	struct ov2680_ctrls *ctrls = &sensor->ctrls;
	struct v4l2_ctrl_handler *hdl = &ctrls->handler;
	int ret = 0;

	FUNC10(&sensor->sd, sensor->i2c_client,
			     &ov2680_subdev_ops);

#ifdef CONFIG_VIDEO_V4L2_SUBDEV_API
	sensor->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE;
#endif
	sensor->pad.flags = MEDIA_PAD_FL_SOURCE;
	sensor->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;

	ret = FUNC2(&sensor->sd.entity, 1, &sensor->pad);
	if (ret < 0)
		return ret;

	FUNC6(hdl, 7);

	hdl->lock = &sensor->lock;

	ctrls->vflip = FUNC7(hdl, ops, V4L2_CID_VFLIP, 0, 1, 1, 0);
	ctrls->hflip = FUNC7(hdl, ops, V4L2_CID_HFLIP, 0, 1, 1, 0);

	ctrls->test_pattern = FUNC9(hdl,
					&ov2680_ctrl_ops, V4L2_CID_TEST_PATTERN,
					FUNC0(test_pattern_menu) - 1,
					0, 0, test_pattern_menu);

	ctrls->auto_exp = FUNC8(hdl, ops,
						 V4L2_CID_EXPOSURE_AUTO,
						 V4L2_EXPOSURE_MANUAL, 0,
						 V4L2_EXPOSURE_AUTO);

	ctrls->exposure = FUNC7(hdl, ops, V4L2_CID_EXPOSURE,
					    0, 32767, 1, 0);

	ctrls->auto_gain = FUNC7(hdl, ops, V4L2_CID_AUTOGAIN,
					     0, 1, 1, 1);
	ctrls->gain = FUNC7(hdl, ops, V4L2_CID_GAIN, 0, 2047, 1, 0);

	if (hdl->error) {
		ret = hdl->error;
		goto cleanup_entity;
	}

	ctrls->gain->flags |= V4L2_CTRL_FLAG_VOLATILE;
	ctrls->exposure->flags |= V4L2_CTRL_FLAG_VOLATILE;

	FUNC4(2, &ctrls->auto_gain, 0, true);
	FUNC4(2, &ctrls->auto_exp, 1, true);

	sensor->sd.ctrl_handler = hdl;

	ret = FUNC3(&sensor->sd);
	if (ret < 0)
		goto cleanup_entity;

	return 0;

cleanup_entity:
	FUNC1(&sensor->sd.entity);
	FUNC5(hdl);

	return ret;
}