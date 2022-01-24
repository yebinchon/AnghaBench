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
struct ov13858 {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ov13858*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ov13858* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC0(client);
	struct ov13858 *ov13858 = FUNC4(sd);

	FUNC5(sd);
	FUNC1(&sd->entity);
	FUNC2(ov13858);

	FUNC3(&client->dev);

	return 0;
}