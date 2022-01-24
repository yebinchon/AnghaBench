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
struct v4l2_capability {int capabilities; int /*<<< orphan*/  card; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  driver; } ;
struct TYPE_4__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_2__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_3__ {struct pvr2_hdw* hdw; } ;

/* Variables and functions */
 int V4L2_CAP_AUDIO ; 
 int V4L2_CAP_DEVICE_CAPS ; 
 int V4L2_CAP_RADIO ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_TUNER ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 char* FUNC0 (struct pvr2_hdw*) ; 
 char* FUNC1 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, struct v4l2_capability *cap)
{
	struct pvr2_v4l2_fh *fh = file->private_data;
	struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;

	FUNC2(cap->driver, "pvrusb2", sizeof(cap->driver));
	FUNC2(cap->bus_info, FUNC0(hdw),
		sizeof(cap->bus_info));
	FUNC2(cap->card, FUNC1(hdw), sizeof(cap->card));
	cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_TUNER |
			    V4L2_CAP_AUDIO | V4L2_CAP_RADIO |
			    V4L2_CAP_READWRITE | V4L2_CAP_DEVICE_CAPS;
	return 0;
}