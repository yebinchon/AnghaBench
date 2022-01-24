#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct smiapp_sensor {int* limits; TYPE_5__* src; void* pixel_rate_csi; int /*<<< orphan*/  mutex; void* hflip; TYPE_4__* pixel_array; void* pixel_rate_parray; TYPE_2__* hblank; TYPE_1__* vblank; void* vflip; void* exposure; void* analog_gain; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_16__ {int error; int /*<<< orphan*/ * lock; } ;
struct TYPE_15__ {TYPE_7__* ctrl_handler; } ;
struct TYPE_14__ {TYPE_7__ ctrl_handler; TYPE_6__ sd; } ;
struct TYPE_12__ {TYPE_7__* ctrl_handler; } ;
struct TYPE_13__ {TYPE_7__ ctrl_handler; TYPE_3__ sd; } ;
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int INT_MAX ; 
 size_t SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MAX ; 
 size_t SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN ; 
 size_t SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_STEP ; 
 int /*<<< orphan*/  V4L2_CID_ANALOGUE_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_HBLANK ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_PIXEL_RATE ; 
 int /*<<< orphan*/  V4L2_CID_TEST_PATTERN ; 
 int /*<<< orphan*/  V4L2_CID_VBLANK ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_CTRL_FLAG_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int,unsigned int) ; 
 int /*<<< orphan*/  smiapp_ctrl_ops ; 
 int /*<<< orphan*/  smiapp_test_patterns ; 
 int /*<<< orphan*/  FUNC3 (int,void**) ; 
 int FUNC4 (TYPE_7__*,int) ; 
 void* FUNC5 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC7 (TYPE_6__*) ; 

__attribute__((used)) static int FUNC8(struct smiapp_sensor *sensor)
{
	struct i2c_client *client = FUNC7(&sensor->src->sd);
	int rval;

	rval = FUNC4(&sensor->pixel_array->ctrl_handler, 12);
	if (rval)
		return rval;

	sensor->pixel_array->ctrl_handler.lock = &sensor->mutex;

	sensor->analog_gain = FUNC5(
		&sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
		V4L2_CID_ANALOGUE_GAIN,
		sensor->limits[SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN],
		sensor->limits[SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MAX],
		FUNC2(sensor->limits[SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_STEP], 1U),
		sensor->limits[SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN]);

	/* Exposure limits will be updated soon, use just something here. */
	sensor->exposure = FUNC5(
		&sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
		V4L2_CID_EXPOSURE, 0, 0, 1, 0);

	sensor->hflip = FUNC5(
		&sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
		V4L2_CID_HFLIP, 0, 1, 1, 0);
	sensor->vflip = FUNC5(
		&sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
		V4L2_CID_VFLIP, 0, 1, 1, 0);

	sensor->vblank = FUNC5(
		&sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
		V4L2_CID_VBLANK, 0, 1, 1, 0);

	if (sensor->vblank)
		sensor->vblank->flags |= V4L2_CTRL_FLAG_UPDATE;

	sensor->hblank = FUNC5(
		&sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
		V4L2_CID_HBLANK, 0, 1, 1, 0);

	if (sensor->hblank)
		sensor->hblank->flags |= V4L2_CTRL_FLAG_UPDATE;

	sensor->pixel_rate_parray = FUNC5(
		&sensor->pixel_array->ctrl_handler, &smiapp_ctrl_ops,
		V4L2_CID_PIXEL_RATE, 1, INT_MAX, 1, 1);

	FUNC6(&sensor->pixel_array->ctrl_handler,
				     &smiapp_ctrl_ops, V4L2_CID_TEST_PATTERN,
				     FUNC0(smiapp_test_patterns) - 1,
				     0, 0, smiapp_test_patterns);

	if (sensor->pixel_array->ctrl_handler.error) {
		FUNC1(&client->dev,
			"pixel array controls initialization failed (%d)\n",
			sensor->pixel_array->ctrl_handler.error);
		return sensor->pixel_array->ctrl_handler.error;
	}

	sensor->pixel_array->sd.ctrl_handler =
		&sensor->pixel_array->ctrl_handler;

	FUNC3(2, &sensor->hflip);

	rval = FUNC4(&sensor->src->ctrl_handler, 0);
	if (rval)
		return rval;

	sensor->src->ctrl_handler.lock = &sensor->mutex;

	sensor->pixel_rate_csi = FUNC5(
		&sensor->src->ctrl_handler, &smiapp_ctrl_ops,
		V4L2_CID_PIXEL_RATE, 1, INT_MAX, 1, 1);

	if (sensor->src->ctrl_handler.error) {
		FUNC1(&client->dev,
			"src controls initialization failed (%d)\n",
			sensor->src->ctrl_handler.error);
		return sensor->src->ctrl_handler.error;
	}

	sensor->src->sd.ctrl_handler = &sensor->src->ctrl_handler;

	return 0;
}