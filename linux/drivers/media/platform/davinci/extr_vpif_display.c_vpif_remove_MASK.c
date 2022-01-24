#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct channel_obj {int /*<<< orphan*/  video_dev; } ;
struct TYPE_4__ {struct channel_obj** dev; int /*<<< orphan*/  sd; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  notifier; TYPE_1__* config; } ;
struct TYPE_3__ {scalar_t__ asd_sizes; } ;

/* Variables and functions */
 int VPIF_DISPLAY_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__ vpif_obj ; 

__attribute__((used)) static int FUNC6(struct platform_device *device)
{
	struct channel_obj *ch;
	int i;

	if (vpif_obj.config->asd_sizes) {
		FUNC3(&vpif_obj.notifier);
		FUNC2(&vpif_obj.notifier);
	}

	FUNC4(&vpif_obj.v4l2_dev);

	FUNC1(vpif_obj.sd);
	/* un-register device */
	for (i = 0; i < VPIF_DISPLAY_MAX_DEVICES; i++) {
		/* Get the pointer to the channel object */
		ch = vpif_obj.dev[i];
		/* Unregister video device */
		FUNC5(&ch->video_dev);
	}
	FUNC0();

	return 0;
}