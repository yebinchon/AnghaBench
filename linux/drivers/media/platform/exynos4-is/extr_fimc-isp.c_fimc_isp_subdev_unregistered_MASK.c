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
struct v4l2_subdev {int dummy; } ;
struct fimc_isp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  FUNC0 (struct fimc_isp*,int /*<<< orphan*/ ) ; 
 struct fimc_isp* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static void FUNC2(struct v4l2_subdev *sd)
{
	struct fimc_isp *isp = FUNC1(sd);

	FUNC0(isp,
			V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
}