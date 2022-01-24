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
struct video_device {int dummy; } ;
struct v4l2_subdev_fh {int /*<<< orphan*/  owner; } ;
struct v4l2_subdev {TYPE_1__* internal_ops; } ;
struct v4l2_fh {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct v4l2_subdev*,struct v4l2_subdev_fh*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev_fh*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,struct v4l2_subdev_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev_fh*) ; 
 struct v4l2_subdev_fh* FUNC4 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_fh*) ; 
 struct v4l2_subdev* FUNC7 (struct video_device*) ; 
 struct video_device* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct video_device *vdev = FUNC8(file);
	struct v4l2_subdev *sd = FUNC7(vdev);
	struct v4l2_fh *vfh = file->private_data;
	struct v4l2_subdev_fh *subdev_fh = FUNC4(vfh);

	if (sd->internal_ops && sd->internal_ops->close)
		sd->internal_ops->close(sd, subdev_fh);
	FUNC1(subdev_fh->owner);
	FUNC5(vfh);
	FUNC6(vfh);
	FUNC3(subdev_fh);
	FUNC0(subdev_fh);
	file->private_data = NULL;

	return 0;
}