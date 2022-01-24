#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {scalar_t__ isp_ready; } ;
struct i2c_msg {int* buf; scalar_t__ len; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int M5MOLS_BYTE_WRITE ; 
 int /*<<< orphan*/  M5MOLS_I2C_MAX_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 struct m5mols_info* FUNC5 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,char*,...) ; 
 struct i2c_client* FUNC8 (struct v4l2_subdev*) ; 

int FUNC9(struct v4l2_subdev *sd, u32 reg, u32 val)
{
	struct i2c_client *client = FUNC8(sd);
	struct m5mols_info *info = FUNC5(sd);
	u8 wbuf[M5MOLS_I2C_MAX_SIZE + 4];
	u8 category = FUNC0(reg);
	u8 cmd = FUNC1(reg);
	u8 size	= FUNC2(reg);
	u32 *buf = (u32 *)&wbuf[4];
	struct i2c_msg msg[1];
	int ret;

	if (!client->adapter)
		return -ENODEV;

	if (size != 1 && size != 2 && size != 4) {
		FUNC7(sd, "Wrong data size\n");
		return -EINVAL;
	}

	msg->addr = client->addr;
	msg->flags = 0;
	msg->len = (u16)size + 4;
	msg->buf = wbuf;
	wbuf[0] = size + 4;
	wbuf[1] = M5MOLS_BYTE_WRITE;
	wbuf[2] = category;
	wbuf[3] = cmd;

	*buf = FUNC4((u8 *)&val, size);

	/* minimum stabilization time */
	FUNC6(200, 300);

	ret = FUNC3(client->adapter, msg, 1);
	if (ret == 1)
		return 0;

	if (info->isp_ready)
		FUNC7(sd, "write failed: cat:%02x cmd:%02x ret:%d\n",
			 category, cmd, ret);

	return ret < 0 ? ret : -EIO;
}