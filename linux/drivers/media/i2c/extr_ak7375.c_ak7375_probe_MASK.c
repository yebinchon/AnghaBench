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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  function; } ;
struct TYPE_5__ {TYPE_3__ entity; int /*<<< orphan*/ * internal_ops; int /*<<< orphan*/  flags; } ;
struct ak7375_device {TYPE_1__ sd; int /*<<< orphan*/  ctrls_vcm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_ENT_F_LENS ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int FUNC0 (struct ak7375_device*) ; 
 int /*<<< orphan*/  ak7375_int_ops ; 
 int /*<<< orphan*/  ak7375_ops ; 
 struct ak7375_device* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client)
{
	struct ak7375_device *ak7375_dev;
	int ret;

	ak7375_dev = FUNC1(&client->dev, sizeof(*ak7375_dev),
				  GFP_KERNEL);
	if (!ak7375_dev)
		return -ENOMEM;

	FUNC9(&ak7375_dev->sd, client, &ak7375_ops);
	ak7375_dev->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
	ak7375_dev->sd.internal_ops = &ak7375_int_ops;
	ak7375_dev->sd.entity.function = MEDIA_ENT_F_LENS;

	ret = FUNC0(ak7375_dev);
	if (ret)
		goto err_cleanup;

	ret = FUNC3(&ak7375_dev->sd.entity, 0, NULL);
	if (ret < 0)
		goto err_cleanup;

	ret = FUNC7(&ak7375_dev->sd);
	if (ret < 0)
		goto err_cleanup;

	FUNC6(&client->dev);
	FUNC4(&client->dev);
	FUNC5(&client->dev);

	return 0;

err_cleanup:
	FUNC8(&ak7375_dev->ctrls_vcm);
	FUNC2(&ak7375_dev->sd.entity);

	return ret;
}