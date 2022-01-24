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
struct v4l2_capability {int capabilities; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {char* name; } ;
struct isp_video {TYPE_1__ video; } ;
struct file {int dummy; } ;

/* Variables and functions */
 char* ISP_VIDEO_DRIVER_NAME ; 
 int V4L2_CAP_DEVICE_CAPS ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int V4L2_CAP_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct isp_video* FUNC1 (struct file*) ; 

__attribute__((used)) static int
FUNC2(struct file *file, void *fh, struct v4l2_capability *cap)
{
	struct isp_video *video = FUNC1(file);

	FUNC0(cap->driver, ISP_VIDEO_DRIVER_NAME, sizeof(cap->driver));
	FUNC0(cap->card, video->video.name, sizeof(cap->card));
	FUNC0(cap->bus_info, "media", sizeof(cap->bus_info));

	cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_VIDEO_OUTPUT
		| V4L2_CAP_STREAMING | V4L2_CAP_DEVICE_CAPS;


	return 0;
}