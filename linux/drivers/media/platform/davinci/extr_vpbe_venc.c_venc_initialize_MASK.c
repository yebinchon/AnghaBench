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
struct venc_state {int /*<<< orphan*/  std; scalar_t__ output; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_STD_525_60 ; 
 struct venc_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,char*) ; 
 int FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd)
{
	struct venc_state *venc = FUNC0(sd);
	int ret;

	/* Set default to output to composite and std to NTSC */
	venc->output = 0;
	venc->std = V4L2_STD_525_60;

	ret = FUNC2(sd, 0, venc->output, 0);
	if (ret < 0) {
		FUNC1(sd, "Error setting output during init\n");
		return -EINVAL;
	}

	ret = FUNC3(sd, venc->std);
	if (ret < 0) {
		FUNC1(sd, "Error setting std during init\n");
		return -EINVAL;
	}

	return ret;
}