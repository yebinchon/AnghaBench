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
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct ov5645 {int /*<<< orphan*/  power_lock; int /*<<< orphan*/  ctrls; TYPE_1__ sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ov5645* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC0(client);
	struct ov5645 *ov5645 = FUNC3(sd);

	FUNC4(&ov5645->sd);
	FUNC1(&ov5645->sd.entity);
	FUNC5(&ov5645->ctrls);
	FUNC2(&ov5645->power_lock);

	return 0;
}