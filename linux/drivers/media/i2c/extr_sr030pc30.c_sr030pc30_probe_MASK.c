#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct sr030pc30_platform_data {int dummy; } ;
struct sr030pc30_info {int i2c_reg_page; int hflip; void* autoexp; void* awb; void* exp; void* blue; void* red; struct v4l2_ctrl_handler hdl; struct sr030pc30_platform_data* pdata; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {struct sr030pc30_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EXPOS_MAX_MS ; 
 int /*<<< orphan*/  EXPOS_MIN_MS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_CID_AUTO_WHITE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_BLUE_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE ; 
 int /*<<< orphan*/  V4L2_CID_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  V4L2_CID_RED_BALANCE ; 
 int /*<<< orphan*/  V4L2_EXPOSURE_MANUAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 struct sr030pc30_info* FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sr030pc30_ctrl_ops ; 
 int FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  sr030pc30_ops ; 
 int /*<<< orphan*/  FUNC3 (int,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_ctrl_handler*) ; 
 void* FUNC7 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct sr030pc30_info *info;
	struct v4l2_subdev *sd;
	struct v4l2_ctrl_handler *hdl;
	const struct sr030pc30_platform_data *pdata
		= client->dev.platform_data;
	int ret;

	if (!pdata) {
		FUNC0(&client->dev, "No platform data!");
		return -EIO;
	}

	ret = FUNC2(client);
	if (ret)
		return ret;

	info = FUNC1(&client->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	sd = &info->sd;
	info->pdata = client->dev.platform_data;

	FUNC8(sd, client, &sr030pc30_ops);

	hdl = &info->hdl;
	FUNC5(hdl, 6);
	info->awb = FUNC7(hdl, &sr030pc30_ctrl_ops,
			V4L2_CID_AUTO_WHITE_BALANCE, 0, 1, 1, 1);
	info->red = FUNC7(hdl, &sr030pc30_ctrl_ops,
			V4L2_CID_RED_BALANCE, 0, 127, 1, 64);
	info->blue = FUNC7(hdl, &sr030pc30_ctrl_ops,
			V4L2_CID_BLUE_BALANCE, 0, 127, 1, 64);
	info->autoexp = FUNC7(hdl, &sr030pc30_ctrl_ops,
			V4L2_CID_EXPOSURE_AUTO, 0, 1, 1, 1);
	info->exp = FUNC7(hdl, &sr030pc30_ctrl_ops,
			V4L2_CID_EXPOSURE, EXPOS_MIN_MS, EXPOS_MAX_MS, 1, 30);
	sd->ctrl_handler = hdl;
	if (hdl->error) {
		int err = hdl->error;

		FUNC4(hdl);
		return err;
	}
	FUNC3(3, &info->awb, 0, false);
	FUNC3(2, &info->autoexp, V4L2_EXPOSURE_MANUAL, false);
	FUNC6(hdl);

	info->i2c_reg_page	= -1;
	info->hflip		= 1;

	return 0;
}