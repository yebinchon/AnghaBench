#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct v4l2_subdev {int dummy; } ;
struct tw9910_priv {int revision; TYPE_1__* scale; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  OEN_TRI_SEL_ALL_OFF_r0 ; 
 int /*<<< orphan*/  OEN_TRI_SEL_ALL_OFF_r1 ; 
 int /*<<< orphan*/  OEN_TRI_SEL_ALL_ON ; 
 int /*<<< orphan*/  OEN_TRI_SEL_MASK ; 
 int /*<<< orphan*/  OPFORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct tw9910_priv* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int) ; 
 struct i2c_client* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int enable)
{
	struct i2c_client *client = FUNC5(sd);
	struct tw9910_priv *priv = FUNC2(client);
	u8 val;
	int ret;

	if (!enable) {
		switch (priv->revision) {
		case 0:
			val = OEN_TRI_SEL_ALL_OFF_r0;
			break;
		case 1:
			val = OEN_TRI_SEL_ALL_OFF_r1;
			break;
		default:
			FUNC1(&client->dev, "un-supported revision\n");
			return -EINVAL;
		}
	} else {
		val = OEN_TRI_SEL_ALL_ON;

		if (!priv->scale) {
			FUNC1(&client->dev, "norm select error\n");
			return -EPERM;
		}

		FUNC0(&client->dev, "%s %dx%d\n",
			priv->scale->name,
			priv->scale->width,
			priv->scale->height);
	}

	ret = FUNC3(client, OPFORM, OEN_TRI_SEL_MASK, val);
	if (ret < 0)
		return ret;

	return FUNC4(client, enable);
}