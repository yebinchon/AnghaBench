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
struct v4l2_subdev {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pipe; } ;
struct TYPE_4__ {TYPE_1__ ve; } ;
struct fimc_dev {TYPE_2__ vid_cap; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (struct fimc_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fimc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_dev*) ; 
 int /*<<< orphan*/ * FUNC3 (struct v4l2_subdev*) ; 
 struct fimc_dev* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd)
{
	struct fimc_dev *fimc = FUNC4(sd);
	int ret;

	if (fimc == NULL)
		return -ENXIO;

	ret = FUNC1(fimc, sd->v4l2_dev);
	if (ret)
		return ret;

	fimc->vid_cap.ve.pipe = FUNC3(sd);

	ret = FUNC0(fimc, sd->v4l2_dev);
	if (ret) {
		FUNC2(fimc);
		fimc->vid_cap.ve.pipe = NULL;
	}

	return ret;
}