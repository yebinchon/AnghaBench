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
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int /*<<< orphan*/  v4l2_dev; } ;
struct rvin_dev {TYPE_1__* parallel; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  sink_pad; int /*<<< orphan*/  source_pad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rvin_dev*,struct v4l2_subdev*) ; 
 struct rvin_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rvin_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_async_notifier *notifier,
				      struct v4l2_subdev *subdev,
				      struct v4l2_async_subdev *asd)
{
	struct rvin_dev *vin = FUNC3(notifier->v4l2_dev);
	int ret;

	FUNC0(&vin->lock);
	ret = FUNC2(vin, subdev);
	FUNC1(&vin->lock);
	if (ret)
		return ret;

	FUNC4(subdev, vin);

	FUNC5(vin, "bound subdev %s source pad: %u sink pad: %u\n",
		subdev->name, vin->parallel->source_pad,
		vin->parallel->sink_pad);

	return 0;
}