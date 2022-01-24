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
struct TYPE_3__ {int /*<<< orphan*/  entity; } ;
struct TYPE_4__ {TYPE_1__ vdev; } ;
struct fimc_vid_cap {int streaming; TYPE_2__ ve; } ;
struct fimc_dev {struct fimc_vid_cap vid_cap; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct file*,void*,int) ; 
 struct fimc_dev* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			    enum v4l2_buf_type type)
{
	struct fimc_dev *fimc = FUNC2(file);
	struct fimc_vid_cap *vc = &fimc->vid_cap;
	int ret;

	ret = FUNC1(file, priv, type);
	if (ret < 0)
		return ret;

	FUNC0(&vc->ve.vdev.entity);
	vc->streaming = false;
	return 0;
}