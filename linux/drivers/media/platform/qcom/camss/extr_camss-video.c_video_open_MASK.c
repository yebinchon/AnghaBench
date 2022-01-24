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
struct video_device {int /*<<< orphan*/  entity; } ;
struct v4l2_fh {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;
struct camss_video {int /*<<< orphan*/  lock; TYPE_1__* camss; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct v4l2_fh* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_fh*,struct video_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 struct video_device* FUNC8 (struct file*) ; 
 struct camss_video* FUNC9 (struct file*) ; 

__attribute__((used)) static int FUNC10(struct file *file)
{
	struct video_device *vdev = FUNC8(file);
	struct camss_video *video = FUNC9(file);
	struct v4l2_fh *vfh;
	int ret;

	FUNC2(&video->lock);

	vfh = FUNC1(sizeof(*vfh), GFP_KERNEL);
	if (vfh == NULL) {
		ret = -ENOMEM;
		goto error_alloc;
	}

	FUNC5(vfh, vdev);
	FUNC4(vfh);

	file->private_data = vfh;

	ret = FUNC7(&vdev->entity, 1);
	if (ret < 0) {
		FUNC0(video->camss->dev, "Failed to power up pipeline: %d\n",
			ret);
		goto error_pm_use;
	}

	FUNC3(&video->lock);

	return 0;

error_pm_use:
	FUNC6(file);

error_alloc:
	FUNC3(&video->lock);

	return ret;
}