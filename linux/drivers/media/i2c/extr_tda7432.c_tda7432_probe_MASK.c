#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {TYPE_2__* ctrl_handler; } ;
struct TYPE_7__ {int error; } ;
struct tda7432 {TYPE_2__ hdl; void* mute; void* bass; void* treble; void* balance; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int /*<<< orphan*/  dev; TYPE_1__* adapter; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_BASS ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_TREBLE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_VOLUME ; 
 struct tda7432* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int loudness ; 
 scalar_t__ maxvol ; 
 int /*<<< orphan*/  tda7432_ctrl_ops ; 
 int /*<<< orphan*/  tda7432_ops ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 void* FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct tda7432 *t;
	struct v4l2_subdev *sd;

	FUNC9(client, "chip found @ 0x%02x (%s)\n",
			client->addr << 1, client->adapter->name);

	t = FUNC0(&client->dev, sizeof(*t), GFP_KERNEL);
	if (!t)
		return -ENOMEM;
	sd = &t->sd;
	FUNC7(sd, client, &tda7432_ops);
	FUNC4(&t->hdl, 5);
	FUNC6(&t->hdl, &tda7432_ctrl_ops,
		V4L2_CID_AUDIO_VOLUME, 0, maxvol ? 0x68 : 0x4f, 1, maxvol ? 0x5d : 0x47);
	t->mute = FUNC6(&t->hdl, &tda7432_ctrl_ops,
		V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
	t->balance = FUNC6(&t->hdl, &tda7432_ctrl_ops,
		V4L2_CID_AUDIO_BALANCE, -31, 31, 1, 0);
	t->bass = FUNC6(&t->hdl, &tda7432_ctrl_ops,
		V4L2_CID_AUDIO_BASS, 0, 14, 1, 7);
	t->treble = FUNC6(&t->hdl, &tda7432_ctrl_ops,
		V4L2_CID_AUDIO_TREBLE, 0, 14, 1, 7);
	sd->ctrl_handler = &t->hdl;
	if (t->hdl.error) {
		int err = t->hdl.error;

		FUNC3(&t->hdl);
		return err;
	}
	FUNC2(2, &t->bass);
	FUNC2(2, &t->mute);
	FUNC5(&t->hdl);
	if (loudness < 0 || loudness > 15) {
		FUNC8(sd, "loudness parameter must be between 0 and 15\n");
		if (loudness < 0)
			loudness = 0;
		if (loudness > 15)
			loudness = 15;
	}

	FUNC1(sd);
	return 0;
}