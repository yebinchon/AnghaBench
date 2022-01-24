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
struct TYPE_2__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  asd_list; } ;
struct xvip_composite_device {int /*<<< orphan*/  dev; TYPE_1__ notifier; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct xvip_composite_device*) ; 
 int FUNC4 (struct xvip_composite_device*) ; 
 int /*<<< orphan*/  xvip_graph_notify_ops ; 
 int FUNC5 (struct xvip_composite_device*) ; 

__attribute__((used)) static int FUNC6(struct xvip_composite_device *xdev)
{
	int ret;

	/* Init the DMA channels. */
	ret = FUNC4(xdev);
	if (ret < 0) {
		FUNC0(xdev->dev, "DMA initialization failed\n");
		goto done;
	}

	/* Parse the graph to extract a list of subdevice DT nodes. */
	ret = FUNC5(xdev);
	if (ret < 0) {
		FUNC0(xdev->dev, "graph parsing failed\n");
		goto done;
	}

	if (FUNC1(&xdev->notifier.asd_list)) {
		FUNC0(xdev->dev, "no subdev found in graph\n");
		goto done;
	}

	/* Register the subdevices notifier. */
	xdev->notifier.ops = &xvip_graph_notify_ops;

	ret = FUNC2(&xdev->v4l2_dev, &xdev->notifier);
	if (ret < 0) {
		FUNC0(xdev->dev, "notifier registration failed\n");
		goto done;
	}

	ret = 0;

done:
	if (ret < 0)
		FUNC3(xdev);

	return ret;
}