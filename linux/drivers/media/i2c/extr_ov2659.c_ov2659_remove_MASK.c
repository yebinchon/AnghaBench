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
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct ov2659 {int /*<<< orphan*/  lock; int /*<<< orphan*/  ctrls; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ov2659* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC0(client);
	struct ov2659 *ov2659 = FUNC3(sd);

	FUNC5(&ov2659->ctrls);
	FUNC4(sd);
	FUNC1(&sd->entity);
	FUNC2(&ov2659->lock);

	return 0;
}