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
typedef  int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct tw9910_priv {int norm; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CROP_HI ; 
 int EINVAL ; 
 int V4L2_STD_525_60 ; 
 int V4L2_STD_NTSC ; 
 int V4L2_STD_PAL ; 
 int /*<<< orphan*/  VACTIVE_LO ; 
 int /*<<< orphan*/  VDELAY_LO ; 
 int /*<<< orphan*/  VVBI ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,unsigned int) ; 
 struct tw9910_priv* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int,int) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, v4l2_std_id norm)
{
	struct i2c_client *client = FUNC3(sd);
	struct tw9910_priv *priv = FUNC1(client);
	const unsigned int hact = 720;
	const unsigned int hdelay = 15;
	unsigned int vact;
	unsigned int vdelay;
	int ret;

	if (!(norm & (V4L2_STD_NTSC | V4L2_STD_PAL)))
		return -EINVAL;

	priv->norm = norm;
	if (norm & V4L2_STD_525_60) {
		vact = 240;
		vdelay = 18;
		ret = FUNC2(client, VVBI, 0x10, 0x10);
	} else {
		vact = 288;
		vdelay = 24;
		ret = FUNC2(client, VVBI, 0x10, 0x00);
	}
	if (!ret)
		ret = FUNC0(client, CROP_HI,
						((vdelay >> 2) & 0xc0)	|
						((vact >> 4) & 0x30)	|
						((hdelay >> 6) & 0x0c)	|
						((hact >> 8) & 0x03));
	if (!ret)
		ret = FUNC0(client, VDELAY_LO,
						vdelay & 0xff);
	if (!ret)
		ret = FUNC0(client, VACTIVE_LO,
						vact & 0xff);

	return ret;
}