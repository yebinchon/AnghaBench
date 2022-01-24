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
struct uvc_streaming {scalar_t__ type; int /*<<< orphan*/  queue; int /*<<< orphan*/  vdev; TYPE_1__* chain; } ;
struct uvc_device {int dummy; } ;
struct TYPE_2__ {int caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_CAP_META_CAPTURE ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int V4L2_CAP_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct uvc_streaming*) ; 
 int /*<<< orphan*/  uvc_fops ; 
 int /*<<< orphan*/  uvc_ioctl_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct uvc_device*,struct uvc_streaming*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct uvc_streaming*) ; 

__attribute__((used)) static int FUNC4(struct uvc_device *dev,
		struct uvc_streaming *stream)
{
	int ret;

	/* Initialize the streaming interface with default parameters. */
	ret = FUNC3(stream);
	if (ret < 0) {
		FUNC1(KERN_ERR, "Failed to initialize the device (%d).\n",
			   ret);
		return ret;
	}

	if (stream->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		stream->chain->caps |= V4L2_CAP_VIDEO_CAPTURE
			| V4L2_CAP_META_CAPTURE;
	else
		stream->chain->caps |= V4L2_CAP_VIDEO_OUTPUT;

	FUNC0(stream);

	/* Register the device with V4L. */
	return FUNC2(dev, stream, &stream->vdev,
					 &stream->queue, stream->type,
					 &uvc_fops, &uvc_ioctl_ops);
}