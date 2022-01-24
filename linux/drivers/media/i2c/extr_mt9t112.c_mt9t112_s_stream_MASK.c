#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct mt9t112_priv {int init_done; TYPE_3__ frame; TYPE_2__* format; TYPE_1__* info; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int fmt; int order; int /*<<< orphan*/  code; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT_CLOCK ; 
 int MT9T112_FLAG_PCLK_RISING_EDGE ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VGA_HEIGHT ; 
 int /*<<< orphan*/  VGA_WIDTH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mt9t112_priv* FUNC11 (struct i2c_client*) ; 
 struct i2c_client* FUNC12 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC13(struct v4l2_subdev *sd, int enable)
{
	struct i2c_client *client = FUNC12(sd);
	struct mt9t112_priv *priv = FUNC11(client);
	int ret = 0;

	if (!enable) {
		/* FIXME
		 *
		 * If user selected large output size, and used it long time,
		 * mt9t112 camera will be very warm.
		 *
		 * But current driver can not stop mt9t112 camera.
		 * So, set small size here to solve this problem.
		 */
		FUNC10(client, VGA_WIDTH, VGA_HEIGHT);
		return ret;
	}

	if (!priv->init_done) {
		u16 param = MT9T112_FLAG_PCLK_RISING_EDGE & priv->info->flags ?
			    0x0001 : 0x0000;

		FUNC1(ret, FUNC7(client));

		/* Invert PCLK (Data sampled on falling edge of pixclk). */
		FUNC9(ret, client, 0x3C20, param);

		FUNC5(5);

		priv->init_done = true;
	}

	FUNC8(ret, client, FUNC2(26, 7), priv->format->fmt);
	FUNC8(ret, client, FUNC2(26, 9), priv->format->order);
	FUNC8(ret, client, FUNC3(1, 0), 0x06);

	FUNC10(client, priv->frame.width, priv->frame.height);

	FUNC1(ret, FUNC6(client));

	FUNC4(&client->dev, "format : %d\n", priv->format->code);
	FUNC4(&client->dev, "size   : %d x %d\n",
		priv->frame.width,
		priv->frame.height);

	FUNC0(client, EXT_CLOCK);

	return ret;
}