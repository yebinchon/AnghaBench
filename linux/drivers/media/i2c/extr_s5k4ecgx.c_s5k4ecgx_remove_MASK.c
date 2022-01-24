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
struct s5k4ecgx {int /*<<< orphan*/  handler; int /*<<< orphan*/  lock; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct s5k4ecgx*) ; 
 struct s5k4ecgx* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC0(client);
	struct s5k4ecgx *priv = FUNC4(sd);

	FUNC2(&priv->lock);
	FUNC3(priv);
	FUNC6(sd);
	FUNC5(&priv->handler);
	FUNC1(&sd->entity);

	return 0;
}