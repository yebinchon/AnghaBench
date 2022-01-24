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
struct vsp1_video {int /*<<< orphan*/  vsp1; int /*<<< orphan*/  video; } ;
struct v4l2_fh {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_fh*) ; 
 struct v4l2_fh* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_fh*,int /*<<< orphan*/ *) ; 
 struct vsp1_video* FUNC6 (struct file*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct vsp1_video *video = FUNC6(file);
	struct v4l2_fh *vfh;
	int ret = 0;

	vfh = FUNC1(sizeof(*vfh), GFP_KERNEL);
	if (vfh == NULL)
		return -ENOMEM;

	FUNC5(vfh, &video->video);
	FUNC2(vfh);

	file->private_data = vfh;

	ret = FUNC7(video->vsp1);
	if (ret < 0) {
		FUNC3(vfh);
		FUNC4(vfh);
		FUNC0(vfh);
	}

	return ret;
}