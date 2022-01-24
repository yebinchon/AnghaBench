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
struct vpfe_subdev_info {struct v4l2_input* inputs; } ;
struct vpfe_device {TYPE_1__* cfg; int /*<<< orphan*/  v4l2_dev; } ;
struct v4l2_input {int /*<<< orphan*/  index; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct vpfe_subdev_info* sub_devs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct vpfe_device* FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (struct vpfe_device*,int*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				 struct v4l2_input *inp)
{
	struct vpfe_device *vpfe_dev = FUNC2(file);
	struct vpfe_subdev_info *sdinfo;
	int subdev, index ;

	FUNC0(1, debug, &vpfe_dev->v4l2_dev, "vpfe_enum_input\n");

	if (FUNC3(vpfe_dev,
					&subdev,
					&index,
					inp->index) < 0) {
		FUNC1(&vpfe_dev->v4l2_dev, "input information not found for the subdev\n");
		return -EINVAL;
	}
	sdinfo = &vpfe_dev->cfg->sub_devs[subdev];
	*inp = sdinfo->inputs[index];
	return 0;
}