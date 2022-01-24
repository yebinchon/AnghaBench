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
struct v4l2_fh {int dummy; } ;
struct v4l2_event_subscription {int type; } ;

/* Variables and functions */
#define  V4L2_EVENT_MOTION_DET 128 
 int FUNC0 (struct v4l2_fh*,struct v4l2_event_subscription const*) ; 
 int FUNC1 (struct v4l2_fh*,struct v4l2_event_subscription const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct v4l2_fh *fh,
				const struct v4l2_event_subscription *sub)
{

	switch (sub->type) {
	case V4L2_EVENT_MOTION_DET:
		/* Allow for up to 30 events (1 second for NTSC) to be
		 * stored. */
		return FUNC1(fh, sub, 30, NULL);
	default:
		return FUNC0(fh, sub);
	}
}