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
struct v4l2_subdev {int /*<<< orphan*/  v4l2_dev; } ;
struct cobalt_stream {int /*<<< orphan*/  vdev; scalar_t__ is_output; } ;
struct cobalt {struct cobalt_stream* streams; } ;

/* Variables and functions */
#define  ADV76XX_HOTPLUG 129 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
#define  V4L2_DEVICE_NOTIFY_EVENT 128 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int,...) ; 
 unsigned int FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cobalt*,int /*<<< orphan*/ ,int) ; 
 struct cobalt* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void FUNC6(struct v4l2_subdev *sd,
			  unsigned int notification, void *arg)
{
	struct cobalt *cobalt = FUNC4(sd->v4l2_dev);
	unsigned sd_nr = FUNC2(sd);
	struct cobalt_stream *s = &cobalt->streams[sd_nr];
	bool hotplug = arg ? *((int *)arg) : false;

	if (s->is_output)
		return;

	switch (notification) {
	case ADV76XX_HOTPLUG:
		FUNC3(cobalt,
			FUNC0(sd_nr), hotplug);
		FUNC1(1, "Set hotplug for adv %d to %d\n", sd_nr, hotplug);
		break;
	case V4L2_DEVICE_NOTIFY_EVENT:
		FUNC1(1, "Format changed for adv %d\n", sd_nr);
		FUNC5(&s->vdev, arg);
		break;
	default:
		break;
	}
}