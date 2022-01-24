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
struct vpfe_device {TYPE_1__* cfg; } ;
struct v4l2_input {int /*<<< orphan*/  index; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct vpfe_subdev_info* sub_devs; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vpfe_device* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct vpfe_device*,char*) ; 
 scalar_t__ FUNC2 (struct vpfe_device*,int*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			   struct v4l2_input *inp)
{
	struct vpfe_device *vpfe = FUNC0(file);
	struct vpfe_subdev_info *sdinfo;
	int subdev, index;

	FUNC1(2, vpfe, "vpfe_enum_input\n");

	if (FUNC2(vpfe, &subdev, &index,
					inp->index) < 0) {
		FUNC1(1, vpfe,
			"input information not found for the subdev\n");
		return -EINVAL;
	}
	sdinfo = &vpfe->cfg->sub_devs[subdev];
	*inp = sdinfo->inputs[index];

	return 0;
}