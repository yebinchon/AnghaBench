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
struct video_device {int dummy; } ;
struct v4l2_fh {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct v4l2_fh* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_fh*,struct video_device*) ; 
 struct video_device* FUNC3 (struct file*) ; 

int FUNC4(struct file *filp)
{
	struct video_device *vdev = FUNC3(filp);
	struct v4l2_fh *fh = FUNC0(sizeof(*fh), GFP_KERNEL);

	filp->private_data = fh;
	if (fh == NULL)
		return -ENOMEM;
	FUNC2(fh, vdev);
	FUNC1(fh);
	return 0;
}