#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* vsp1; } ;
struct TYPE_4__ {char* name; } ;
struct vsp1_histogram {TYPE_3__ entity; TYPE_1__ video; } ;
struct v4l2_fh {int /*<<< orphan*/  vdev; } ;
struct v4l2_capability {int capabilities; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int V4L2_CAP_DEVICE_CAPS ; 
 int V4L2_CAP_META_CAPTURE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ; 
 int V4L2_CAP_VIDEO_OUTPUT_MPLANE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct vsp1_histogram* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *fh,
			       struct v4l2_capability *cap)
{
	struct v4l2_fh *vfh = file->private_data;
	struct vsp1_histogram *histo = FUNC3(vfh->vdev);

	cap->capabilities = V4L2_CAP_DEVICE_CAPS | V4L2_CAP_STREAMING
			  | V4L2_CAP_VIDEO_CAPTURE_MPLANE
			  | V4L2_CAP_VIDEO_OUTPUT_MPLANE
			  | V4L2_CAP_META_CAPTURE;

	FUNC2(cap->driver, "vsp1", sizeof(cap->driver));
	FUNC2(cap->card, histo->video.name, sizeof(cap->card));
	FUNC1(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
		 FUNC0(histo->entity.vsp1->dev));

	return 0;
}