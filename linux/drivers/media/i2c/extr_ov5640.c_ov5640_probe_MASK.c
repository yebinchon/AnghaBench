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
typedef  int u32 ;
struct v4l2_mbus_framefmt {int width; int height; int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  code; } ;
struct TYPE_11__ {int /*<<< orphan*/  function; } ;
struct TYPE_10__ {int flags; TYPE_5__ entity; } ;
struct TYPE_9__ {int /*<<< orphan*/  handler; } ;
struct TYPE_12__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int numerator; int /*<<< orphan*/  denominator; } ;
struct ov5640_dev {size_t current_fr; int ae_target; int upside_down; scalar_t__ xclk_freq; TYPE_3__ sd; int /*<<< orphan*/  lock; TYPE_2__ ctrls; TYPE_6__ pad; void* reset_gpio; void* pwdn_gpio; void* xclk; int /*<<< orphan*/  ep; int /*<<< orphan*/ * current_mode; int /*<<< orphan*/ * last_mode; TYPE_1__ frame_interval; struct v4l2_mbus_framefmt fmt; struct i2c_client* i2c_client; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_UYVY8_2X8 ; 
 int /*<<< orphan*/  MEDIA_ENT_F_CAM_SENSOR ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 size_t OV5640_30_FPS ; 
 size_t OV5640_MODE_VGA_640_480 ; 
 scalar_t__ OV5640_XCLK_MAX ; 
 scalar_t__ OV5640_XCLK_MIN ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SRGB ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_QUANTIZATION_FULL_RANGE ; 
 int V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_FL_HAS_EVENTS ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 void* FUNC8 (struct device*,char*) ; 
 void* FUNC9 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ov5640_dev* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct fwnode_handle* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct fwnode_handle*) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 int FUNC15 (TYPE_5__*,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct ov5640_dev*) ; 
 int /*<<< orphan*/ * ov5640_framerates ; 
 int FUNC19 (struct ov5640_dev*) ; 
 int FUNC20 (struct ov5640_dev*) ; 
 int /*<<< orphan*/ * ov5640_mode_data ; 
 int /*<<< orphan*/  ov5640_subdev_ops ; 
 int FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (struct fwnode_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct fwnode_handle *endpoint;
	struct ov5640_dev *sensor;
	struct v4l2_mbus_framefmt *fmt;
	u32 rotation;
	int ret;

	sensor = FUNC10(dev, sizeof(*sensor), GFP_KERNEL);
	if (!sensor)
		return -ENOMEM;

	sensor->i2c_client = client;

	/*
	 * default init sequence initialize sensor to
	 * YUV422 UYVY VGA@30fps
	 */
	fmt = &sensor->fmt;
	fmt->code = MEDIA_BUS_FMT_UYVY8_2X8;
	fmt->colorspace = V4L2_COLORSPACE_SRGB;
	fmt->ycbcr_enc = FUNC3(fmt->colorspace);
	fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
	fmt->xfer_func = FUNC2(fmt->colorspace);
	fmt->width = 640;
	fmt->height = 480;
	fmt->field = V4L2_FIELD_NONE;
	sensor->frame_interval.numerator = 1;
	sensor->frame_interval.denominator = ov5640_framerates[OV5640_30_FPS];
	sensor->current_fr = OV5640_30_FPS;
	sensor->current_mode =
		&ov5640_mode_data[OV5640_MODE_VGA_640_480];
	sensor->last_mode = sensor->current_mode;

	sensor->ae_target = 52;

	/* optional indication of physical rotation of sensor */
	ret = FUNC13(FUNC6(&client->dev), "rotation",
				       &rotation);
	if (!ret) {
		switch (rotation) {
		case 180:
			sensor->upside_down = true;
			/* fall through */
		case 0:
			break;
		default:
			FUNC7(dev, "%u degrees rotation is not supported, ignoring...\n",
				 rotation);
		}
	}

	endpoint = FUNC11(FUNC6(&client->dev),
						  NULL);
	if (!endpoint) {
		FUNC5(dev, "endpoint node not found\n");
		return -EINVAL;
	}

	ret = FUNC23(endpoint, &sensor->ep);
	FUNC12(endpoint);
	if (ret) {
		FUNC5(dev, "Could not parse endpoint\n");
		return ret;
	}

	/* get system clock (xclk) */
	sensor->xclk = FUNC8(dev, "xclk");
	if (FUNC0(sensor->xclk)) {
		FUNC5(dev, "failed to get xclk\n");
		return FUNC1(sensor->xclk);
	}

	sensor->xclk_freq = FUNC4(sensor->xclk);
	if (sensor->xclk_freq < OV5640_XCLK_MIN ||
	    sensor->xclk_freq > OV5640_XCLK_MAX) {
		FUNC5(dev, "xclk frequency out of range: %d Hz\n",
			sensor->xclk_freq);
		return -EINVAL;
	}

	/* request optional power down pin */
	sensor->pwdn_gpio = FUNC9(dev, "powerdown",
						    GPIOD_OUT_HIGH);
	if (FUNC0(sensor->pwdn_gpio))
		return FUNC1(sensor->pwdn_gpio);

	/* request optional reset pin */
	sensor->reset_gpio = FUNC9(dev, "reset",
						     GPIOD_OUT_HIGH);
	if (FUNC0(sensor->reset_gpio))
		return FUNC1(sensor->reset_gpio);

	FUNC24(&sensor->sd, client, &ov5640_subdev_ops);

	sensor->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
			    V4L2_SUBDEV_FL_HAS_EVENTS;
	sensor->pad.flags = MEDIA_PAD_FL_SOURCE;
	sensor->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;
	ret = FUNC15(&sensor->sd.entity, 1, &sensor->pad);
	if (ret)
		return ret;

	ret = FUNC19(sensor);
	if (ret)
		return ret;

	FUNC17(&sensor->lock);

	ret = FUNC18(sensor);
	if (ret)
		goto entity_cleanup;

	ret = FUNC20(sensor);
	if (ret)
		goto entity_cleanup;

	ret = FUNC21(&sensor->sd);
	if (ret)
		goto free_ctrls;

	return 0;

free_ctrls:
	FUNC22(&sensor->ctrls.handler);
entity_cleanup:
	FUNC16(&sensor->lock);
	FUNC14(&sensor->sd.entity);
	return ret;
}