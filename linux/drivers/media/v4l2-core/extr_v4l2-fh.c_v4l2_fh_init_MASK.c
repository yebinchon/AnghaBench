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
struct video_device {int /*<<< orphan*/ * valid_ioctls; int /*<<< orphan*/  flags; int /*<<< orphan*/  ctrl_handler; } ;
struct v4l2_fh {int sequence; int /*<<< orphan*/  subscribe_lock; int /*<<< orphan*/  subscribed; int /*<<< orphan*/  available; int /*<<< orphan*/  wait; int /*<<< orphan*/  prio; struct video_device* vdev; int /*<<< orphan*/  list; int /*<<< orphan*/  ctrl_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V4L2_FL_USES_V4L2_FH ; 
 int /*<<< orphan*/  V4L2_PRIORITY_UNSET ; 
 int /*<<< orphan*/  VIDIOC_G_PRIORITY ; 
 int /*<<< orphan*/  VIDIOC_S_PRIORITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct v4l2_fh *fh, struct video_device *vdev)
{
	fh->vdev = vdev;
	/* Inherit from video_device. May be overridden by the driver. */
	fh->ctrl_handler = vdev->ctrl_handler;
	FUNC0(&fh->list);
	FUNC4(V4L2_FL_USES_V4L2_FH, &fh->vdev->flags);
	/*
	 * determine_valid_ioctls() does not know if struct v4l2_fh
	 * is used by this driver, but here we do. So enable the
	 * prio ioctls here.
	 */
	FUNC4(FUNC1(VIDIOC_G_PRIORITY), vdev->valid_ioctls);
	FUNC4(FUNC1(VIDIOC_S_PRIORITY), vdev->valid_ioctls);
	fh->prio = V4L2_PRIORITY_UNSET;
	FUNC2(&fh->wait);
	FUNC0(&fh->available);
	FUNC0(&fh->subscribed);
	fh->sequence = -1;
	FUNC3(&fh->subscribe_lock);
}