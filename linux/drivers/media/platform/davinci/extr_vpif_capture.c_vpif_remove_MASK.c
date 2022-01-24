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
struct platform_device {int dummy; } ;
struct channel_obj {int /*<<< orphan*/  video_dev; } ;
struct TYPE_2__ {struct channel_obj** dev; struct channel_obj* sd; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  notifier; } ;

/* Variables and functions */
 int VPIF_CAPTURE_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (struct channel_obj*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ vpif_obj ; 

__attribute__((used)) static int FUNC5(struct platform_device *device)
{
	struct channel_obj *ch;
	int i;

	FUNC2(&vpif_obj.notifier);
	FUNC1(&vpif_obj.notifier);
	FUNC3(&vpif_obj.v4l2_dev);

	FUNC0(vpif_obj.sd);
	/* un-register device */
	for (i = 0; i < VPIF_CAPTURE_MAX_DEVICES; i++) {
		/* Get the pointer to the channel object */
		ch = vpif_obj.dev[i];
		/* Unregister video device */
		FUNC4(&ch->video_dev);
		FUNC0(vpif_obj.dev[i]);
	}
	return 0;
}