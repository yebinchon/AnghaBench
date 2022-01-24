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
struct imx258 {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct imx258*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct imx258* FUNC5 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC0(client);
	struct imx258 *imx258 = FUNC5(sd);

	FUNC6(sd);
	FUNC2(&sd->entity);
	FUNC1(imx258);

	FUNC3(&client->dev);
	FUNC4(&client->dev);

	return 0;
}