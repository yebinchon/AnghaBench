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
struct mt9t001 {int /*<<< orphan*/  ctrls; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mt9t001* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct v4l2_subdev *subdev = FUNC0(client);
	struct mt9t001 *mt9t001 = FUNC2(subdev);

	FUNC3(&mt9t001->ctrls);
	FUNC4(subdev);
	FUNC1(&subdev->entity);
	return 0;
}