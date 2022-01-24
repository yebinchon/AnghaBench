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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct vpfe_subdev_info {int /*<<< orphan*/  grp_id; TYPE_1__* inputs; } ;
struct vpfe_device {int /*<<< orphan*/  v4l2_dev; struct vpfe_subdev_info* current_subdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int capabilities; } ;

/* Variables and functions */
 int ENODATA ; 
 int V4L2_IN_CAP_STD ; 
 int /*<<< orphan*/  querystd ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 
 struct vpfe_device* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct vpfe_device*,char*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, v4l2_std_id *std_id)
{
	struct vpfe_device *vpfe = FUNC1(file);
	struct vpfe_subdev_info *sdinfo;

	FUNC2(2, vpfe, "vpfe_querystd\n");

	sdinfo = vpfe->current_subdev;
	if (!(sdinfo->inputs[0].capabilities & V4L2_IN_CAP_STD))
		return -ENODATA;

	/* Call querystd function of decoder device */
	return FUNC0(&vpfe->v4l2_dev, sdinfo->grp_id,
					 video, querystd, std_id);
}