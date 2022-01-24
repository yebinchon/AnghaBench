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
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct TYPE_2__ {int /*<<< orphan*/  handler; } ;
struct stimx274 {int /*<<< orphan*/  lock; TYPE_1__ ctrls; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  imx274_stop ; 
 int /*<<< orphan*/  FUNC1 (struct stimx274*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct stimx274* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC0(client);
	struct stimx274 *imx274 = FUNC4(sd);

	/* stop stream */
	FUNC1(imx274, imx274_stop);

	FUNC5(sd);
	FUNC6(&imx274->ctrls.handler);
	FUNC2(&sd->entity);
	FUNC3(&imx274->lock);
	return 0;
}