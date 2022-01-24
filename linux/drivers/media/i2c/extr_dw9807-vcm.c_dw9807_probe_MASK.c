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
struct dw9807_device {TYPE_1__ sd; int /*<<< orphan*/  ctrls_vcm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_ENT_F_LENS ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 struct dw9807_device* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dw9807_device*) ; 
 int /*<<< orphan*/  dw9807_int_ops ; 
 int /*<<< orphan*/  dw9807_ops ; 
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
	struct dw9807_device *dw9807_dev;
	int rval;

	dw9807_dev = FUNC0(&client->dev, sizeof(*dw9807_dev),
				  GFP_KERNEL);
	if (dw9807_dev == NULL)
		return -ENOMEM;

	FUNC9(&dw9807_dev->sd, client, &dw9807_ops);
	dw9807_dev->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
	dw9807_dev->sd.internal_ops = &dw9807_int_ops;

	rval = FUNC1(dw9807_dev);
	if (rval)
		goto err_cleanup;

	rval = FUNC3(&dw9807_dev->sd.entity, 0, NULL);
	if (rval < 0)
		goto err_cleanup;

	dw9807_dev->sd.entity.function = MEDIA_ENT_F_LENS;

	rval = FUNC7(&dw9807_dev->sd);
	if (rval < 0)
		goto err_cleanup;

	FUNC6(&client->dev);
	FUNC4(&client->dev);
	FUNC5(&client->dev);

	return 0;

err_cleanup:
	FUNC8(&dw9807_dev->ctrls_vcm);
	FUNC2(&dw9807_dev->sd.entity);

	return rval;
}