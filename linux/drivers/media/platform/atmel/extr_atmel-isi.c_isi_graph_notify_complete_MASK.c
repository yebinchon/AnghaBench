#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_async_notifier {int dummy; } ;
struct TYPE_6__ {TYPE_1__* subdev; } ;
struct atmel_isi {TYPE_3__* vdev; int /*<<< orphan*/  dev; TYPE_2__ entity; } ;
struct TYPE_7__ {int /*<<< orphan*/  ctrl_handler; } ;
struct TYPE_5__ {int /*<<< orphan*/  ctrl_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_isi*) ; 
 int FUNC3 (struct atmel_isi*) ; 
 int FUNC4 (struct atmel_isi*) ; 
 struct atmel_isi* FUNC5 (struct v4l2_async_notifier*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct v4l2_async_notifier *notifier)
{
	struct atmel_isi *isi = FUNC5(notifier);
	int ret;

	isi->vdev->ctrl_handler = isi->entity.subdev->ctrl_handler;
	ret = FUNC3(isi);
	if (ret) {
		FUNC1(isi->dev, "No supported mediabus format found\n");
		return ret;
	}
	FUNC2(isi);

	ret = FUNC4(isi);
	if (ret) {
		FUNC1(isi->dev, "Could not set default format\n");
		return ret;
	}

	ret = FUNC7(isi->vdev, VFL_TYPE_GRABBER, -1);
	if (ret) {
		FUNC1(isi->dev, "Failed to register video device\n");
		return ret;
	}

	FUNC0(isi->dev, "Device registered as %s\n",
		FUNC6(isi->vdev));
	return 0;
}