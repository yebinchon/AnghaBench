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
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  handler; } ;
struct TYPE_4__ {int /*<<< orphan*/  entity; } ;
struct ov2680_dev {TYPE_1__ ctrls; TYPE_2__ sd; int /*<<< orphan*/  lock; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ov2680_dev* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC0(client);
	struct ov2680_dev *sensor = FUNC3(sd);

	FUNC4(&sensor->sd);
	FUNC2(&sensor->lock);
	FUNC1(&sensor->sd.entity);
	FUNC5(&sensor->ctrls.handler);

	return 0;
}