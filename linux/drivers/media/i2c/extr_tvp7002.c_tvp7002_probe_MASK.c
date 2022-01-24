#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_12__ {int /*<<< orphan*/  function; } ;
struct v4l2_subdev {TYPE_6__ entity; TYPE_1__* ctrl_handler; int /*<<< orphan*/  flags; } ;
struct v4l2_dv_timings {int dummy; } ;
struct tvp7002_config {int hs_polarity; int vs_polarity; int fid_polarity; int sog_polarity; int clk_polarity; } ;
struct TYPE_10__ {int error; } ;
struct TYPE_13__ {int /*<<< orphan*/  flags; } ;
struct tvp7002 {struct v4l2_subdev sd; TYPE_1__ hdl; TYPE_7__ pad; TYPE_5__* current_timings; struct tvp7002_config* pdata; } ;
struct i2c_client {TYPE_9__* adapter; int /*<<< orphan*/  addr; int /*<<< orphan*/  dev; } ;
struct TYPE_14__ {int /*<<< orphan*/  name; } ;
struct TYPE_11__ {struct v4l2_dv_timings timings; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_READ_BYTE ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ; 
 int /*<<< orphan*/  MEDIA_ENT_F_ATV_DECODER ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  TVP7002_CHIP_REV ; 
 int /*<<< orphan*/  TVP7002_MISC_CTL_3 ; 
 int /*<<< orphan*/  TVP7002_SYNC_CTL_1 ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct tvp7002* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int FUNC4 (TYPE_6__*,int,TYPE_7__*) ; 
 int /*<<< orphan*/  tvp7002_ctrl_ops ; 
 struct tvp7002_config* FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  tvp7002_init_default ; 
 int /*<<< orphan*/  tvp7002_ops ; 
 int FUNC6 (struct v4l2_subdev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct v4l2_subdev*,struct v4l2_dv_timings*) ; 
 TYPE_5__* tvp7002_timings ; 
 int FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct v4l2_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct i2c_client*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *c)
{
	struct tvp7002_config *pdata = FUNC5(c);
	struct v4l2_subdev *sd;
	struct tvp7002 *device;
	struct v4l2_dv_timings timings;
	int polarity_a;
	int polarity_b;
	u8 revision;
	int error;

	if (pdata == NULL) {
		FUNC0(&c->dev, "No platform data\n");
		return -EINVAL;
	}

	/* Check if the adapter supports the needed features */
	if (!FUNC2(c->adapter,
		I2C_FUNC_SMBUS_READ_BYTE | I2C_FUNC_SMBUS_WRITE_BYTE_DATA))
		return -EIO;

	device = FUNC1(&c->dev, sizeof(struct tvp7002), GFP_KERNEL);

	if (!device)
		return -ENOMEM;

	sd = &device->sd;
	device->pdata = pdata;
	device->current_timings = tvp7002_timings;

	/* Tell v4l2 the device is ready */
	FUNC15(sd, c, &tvp7002_ops);
	FUNC17(c, "tvp7002 found @ 0x%02x (%s)\n",
					c->addr, c->adapter->name);

	error = FUNC6(sd, TVP7002_CHIP_REV, &revision);
	if (error < 0)
		return error;

	/* Get revision number */
	FUNC16(sd, "Rev. %02x detected.\n", revision);
	if (revision != 0x02)
		FUNC16(sd, "Unknown revision detected.\n");

	/* Initializes TVP7002 to its default values */
	error = FUNC9(sd, tvp7002_init_default);

	if (error < 0)
		return error;

	/* Set polarity information after registers have been set */
	polarity_a = 0x20 | device->pdata->hs_polarity << 5
			| device->pdata->vs_polarity << 2;
	error = FUNC8(sd, TVP7002_SYNC_CTL_1, polarity_a);
	if (error < 0)
		return error;

	polarity_b = 0x01  | device->pdata->fid_polarity << 2
			| device->pdata->sog_polarity << 1
			| device->pdata->clk_polarity;
	error = FUNC8(sd, TVP7002_MISC_CTL_3, polarity_b);
	if (error < 0)
		return error;

	/* Set registers according to default video mode */
	timings = device->current_timings->timings;
	error = FUNC7(sd, &timings);

#if defined(CONFIG_MEDIA_CONTROLLER)
	device->pad.flags = MEDIA_PAD_FL_SOURCE;
	device->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
	device->sd.entity.function = MEDIA_ENT_F_ATV_DECODER;

	error = media_entity_pads_init(&device->sd.entity, 1, &device->pad);
	if (error < 0)
		return error;
#endif

	FUNC12(&device->hdl, 1);
	FUNC14(&device->hdl, &tvp7002_ctrl_ops,
			V4L2_CID_GAIN, 0, 255, 1, 0);
	sd->ctrl_handler = &device->hdl;
	if (device->hdl.error) {
		error = device->hdl.error;
		goto error;
	}
	FUNC13(&device->hdl);

	error = FUNC10(&device->sd);
	if (error)
		goto error;

	return 0;

error:
	FUNC11(&device->hdl);
#if defined(CONFIG_MEDIA_CONTROLLER)
	media_entity_cleanup(&device->sd.entity);
#endif
	return error;
}