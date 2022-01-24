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
struct v4l2_subdev {int dummy; } ;
struct v4l2_fh {int dummy; } ;
struct v4l2_event_subscription {scalar_t__ type; } ;
struct ispstat {scalar_t__ event_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  STAT_NEVENTS ; 
 int FUNC0 (struct v4l2_fh*,struct v4l2_event_subscription*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ispstat* FUNC1 (struct v4l2_subdev*) ; 

int FUNC2(struct v4l2_subdev *subdev,
				  struct v4l2_fh *fh,
				  struct v4l2_event_subscription *sub)
{
	struct ispstat *stat = FUNC1(subdev);

	if (sub->type != stat->event_type)
		return -EINVAL;

	return FUNC0(fh, sub, STAT_NEVENTS, NULL);
}