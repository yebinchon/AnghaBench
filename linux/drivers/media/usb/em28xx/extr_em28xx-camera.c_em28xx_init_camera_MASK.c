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
struct TYPE_3__ {int width; int height; int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {TYPE_1__ format; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9v011_platform_data {int xtal; } ;
struct i2c_client {int /*<<< orphan*/  addr; } ;
struct i2c_board_info {char* type; int /*<<< orphan*/  addr; int /*<<< orphan*/  flags; struct mt9v011_platform_data* platform_data; } ;
struct i2c_adapter {int dummy; } ;
struct em28xx_v4l2 {int sensor_xres; int sensor_yres; int sensor_xtal; int vinctl; int /*<<< orphan*/  vinmode; int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  xclk; } ;
struct em28xx {size_t def_i2c_bus; int em28xx_sensor; TYPE_2__ board; struct em28xx_v4l2* v4l2; struct i2c_adapter* i2c_adap; struct i2c_client* i2c_client; } ;

/* Variables and functions */
 int EINVAL ; 
#define  EM28XX_MT9M001 132 
#define  EM28XX_MT9M111 131 
#define  EM28XX_MT9V011 130 
#define  EM28XX_NOSENSOR 129 
#define  EM28XX_OV2640 128 
 int /*<<< orphan*/  EM28XX_R0F_XCLK ; 
 int /*<<< orphan*/  EM28XX_VINMODE_RGB8_BGGR ; 
 int /*<<< orphan*/  EM28XX_VINMODE_RGB8_GRBG ; 
 int /*<<< orphan*/  EM28XX_VINMODE_YUV422_UYVY ; 
 int /*<<< orphan*/  EM28XX_VINMODE_YUV422_YUYV ; 
 int /*<<< orphan*/  EM28XX_XCLK_FREQUENCY_24MHZ ; 
 int /*<<< orphan*/  EM28XX_XCLK_FREQUENCY_48MHZ ; 
 int /*<<< orphan*/  EM28XX_XCLK_FREQUENCY_4_3MHZ ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_CLIENT_SCCB ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_YUYV8_2X8 ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  set_fmt ; 
 struct v4l2_subdev* FUNC3 (int /*<<< orphan*/ *,struct i2c_adapter*,struct i2c_board_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 

int FUNC5(struct em28xx *dev)
{
	struct i2c_client *client = &dev->i2c_client[dev->def_i2c_bus];
	struct i2c_adapter *adap = &dev->i2c_adap[dev->def_i2c_bus];
	struct em28xx_v4l2 *v4l2 = dev->v4l2;

	switch (dev->em28xx_sensor) {
	case EM28XX_MT9V011:
	{
		struct mt9v011_platform_data pdata;
		struct i2c_board_info mt9v011_info = {
			.type = "mt9v011",
			.addr = client->addr,
			.platform_data = &pdata,
		};

		v4l2->sensor_xres = 640;
		v4l2->sensor_yres = 480;

		/*
		 * FIXME: mt9v011 uses I2S speed as xtal clk - at least with
		 * the Silvercrest cam I have here for testing - for higher
		 * resolutions, a high clock cause horizontal artifacts, so we
		 * need to use a lower xclk frequency.
		 * Yet, it would be possible to adjust xclk depending on the
		 * desired resolution, since this affects directly the
		 * frame rate.
		 */
		dev->board.xclk = EM28XX_XCLK_FREQUENCY_4_3MHZ;
		FUNC2(dev, EM28XX_R0F_XCLK, dev->board.xclk);
		v4l2->sensor_xtal = 4300000;
		pdata.xtal = v4l2->sensor_xtal;
		if (NULL ==
		    FUNC3(&v4l2->v4l2_dev, adap,
					      &mt9v011_info, NULL))
			return -ENODEV;
		v4l2->vinmode = EM28XX_VINMODE_RGB8_GRBG;
		v4l2->vinctl = 0x00;

		break;
	}
	case EM28XX_MT9M001:
		v4l2->sensor_xres = 1280;
		v4l2->sensor_yres = 1024;

		FUNC0(dev);

		v4l2->vinmode = EM28XX_VINMODE_RGB8_BGGR;
		v4l2->vinctl = 0x00;

		break;
	case EM28XX_MT9M111:
		v4l2->sensor_xres = 640;
		v4l2->sensor_yres = 512;

		dev->board.xclk = EM28XX_XCLK_FREQUENCY_48MHZ;
		FUNC2(dev, EM28XX_R0F_XCLK, dev->board.xclk);
		FUNC1(dev);

		v4l2->vinmode = EM28XX_VINMODE_YUV422_UYVY;
		v4l2->vinctl = 0x00;

		break;
	case EM28XX_OV2640:
	{
		struct v4l2_subdev *subdev;
		struct i2c_board_info ov2640_info = {
			.type = "ov2640",
			.flags = I2C_CLIENT_SCCB,
			.addr = client->addr,
		};
		struct v4l2_subdev_format format = {
			.which = V4L2_SUBDEV_FORMAT_ACTIVE,
		};

		/*
		 * FIXME: sensor supports resolutions up to 1600x1200, but
		 * resolution setting/switching needs to be modified to
		 * - switch sensor output resolution (including further
		 *   configuration changes)
		 * - adjust bridge xclk
		 * - disable 16 bit (12 bit) output formats on high resolutions
		 */
		v4l2->sensor_xres = 640;
		v4l2->sensor_yres = 480;

		subdev =
		     FUNC3(&v4l2->v4l2_dev, adap,
					       &ov2640_info, NULL);
		if (!subdev)
			return -ENODEV;

		format.format.code = MEDIA_BUS_FMT_YUYV8_2X8;
		format.format.width = 640;
		format.format.height = 480;
		FUNC4(subdev, pad, set_fmt, NULL, &format);

		/* NOTE: for UXGA=1600x1200 switch to 12MHz */
		dev->board.xclk = EM28XX_XCLK_FREQUENCY_24MHZ;
		FUNC2(dev, EM28XX_R0F_XCLK, dev->board.xclk);
		v4l2->vinmode = EM28XX_VINMODE_YUV422_YUYV;
		v4l2->vinctl = 0x00;

		break;
	}
	case EM28XX_NOSENSOR:
	default:
		return -EINVAL;
	}

	return 0;
}