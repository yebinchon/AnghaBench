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
struct v4l2_subdev {int name; int /*<<< orphan*/  entity; int /*<<< orphan*/  fwnode; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int /*<<< orphan*/  sd; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct mipid02_dev {struct v4l2_subdev* s_subdev; TYPE_1__ sd; struct i2c_client* i2c_client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_LNK_FL_IMMUTABLE ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mipid02_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_async_notifier *notifier,
			       struct v4l2_subdev *s_subdev,
			       struct v4l2_async_subdev *asd)
{
	struct mipid02_dev *bridge = FUNC4(notifier->sd);
	struct i2c_client *client = bridge->i2c_client;
	int source_pad;
	int ret;

	FUNC0(&client->dev, "sensor_async_bound call %p", s_subdev);

	source_pad = FUNC3(&s_subdev->entity,
						 s_subdev->fwnode,
						 MEDIA_PAD_FL_SOURCE);
	if (source_pad < 0) {
		FUNC1(&client->dev, "Couldn't find output pad for subdev %s\n",
			s_subdev->name);
		return source_pad;
	}

	ret = FUNC2(&s_subdev->entity, source_pad,
				    &bridge->sd.entity, 0,
				    MEDIA_LNK_FL_ENABLED |
				    MEDIA_LNK_FL_IMMUTABLE);
	if (ret) {
		FUNC1(&client->dev, "Couldn't create media link %d", ret);
		return ret;
	}

	bridge->s_subdev = s_subdev;

	return 0;
}