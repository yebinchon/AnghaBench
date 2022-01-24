#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_async_notifier {int dummy; } ;
struct TYPE_5__ {TYPE_3__* source; } ;
struct stm32_dcmi {int /*<<< orphan*/  dev; int /*<<< orphan*/  sd_bounds; TYPE_2__ entity; TYPE_1__* vdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  ctrl_handler; } ;
struct TYPE_4__ {int /*<<< orphan*/  ctrl_handler; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct stm32_dcmi*) ; 
 int FUNC1 (struct stm32_dcmi*) ; 
 int FUNC2 (struct stm32_dcmi*) ; 
 int FUNC3 (struct stm32_dcmi*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct stm32_dcmi*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 struct stm32_dcmi* FUNC7 (struct v4l2_async_notifier*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_async_notifier *notifier)
{
	struct stm32_dcmi *dcmi = FUNC7(notifier);
	int ret;

	/*
	 * Now that the graph is complete,
	 * we search for the source subdevice
	 * in order to expose it through V4L2 interface
	 */
	dcmi->entity.source =
		FUNC6(FUNC0(dcmi));
	if (!dcmi->entity.source) {
		FUNC5(dcmi->dev, "Source subdevice not found\n");
		return -ENODEV;
	}

	dcmi->vdev->ctrl_handler = dcmi->entity.source->ctrl_handler;

	ret = FUNC1(dcmi);
	if (ret) {
		FUNC5(dcmi->dev, "No supported mediabus format found\n");
		return ret;
	}

	ret = FUNC2(dcmi);
	if (ret) {
		FUNC5(dcmi->dev, "Could not initialize framesizes\n");
		return ret;
	}

	ret = FUNC3(dcmi, &dcmi->sd_bounds);
	if (ret) {
		FUNC5(dcmi->dev, "Could not get sensor bounds\n");
		return ret;
	}

	ret = FUNC4(dcmi);
	if (ret) {
		FUNC5(dcmi->dev, "Could not set default format\n");
		return ret;
	}

	return 0;
}