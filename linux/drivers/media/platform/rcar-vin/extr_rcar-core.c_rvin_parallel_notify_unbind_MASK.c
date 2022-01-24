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
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int /*<<< orphan*/  v4l2_dev; } ;
struct rvin_dev {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rvin_dev*) ; 
 struct rvin_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rvin_dev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct v4l2_async_notifier *notifier,
					struct v4l2_subdev *subdev,
					struct v4l2_async_subdev *asd)
{
	struct rvin_dev *vin = FUNC3(notifier->v4l2_dev);

	FUNC4(vin, "unbind parallel subdev %s\n", subdev->name);

	FUNC0(&vin->lock);
	FUNC2(vin);
	FUNC1(&vin->lock);
}