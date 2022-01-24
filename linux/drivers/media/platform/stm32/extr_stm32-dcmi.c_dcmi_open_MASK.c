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
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {struct v4l2_subdev* source; } ;
struct stm32_dcmi {int /*<<< orphan*/  lock; int /*<<< orphan*/  fmt; TYPE_1__ entity; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  core ; 
 int FUNC0 (struct stm32_dcmi*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int FUNC6 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct stm32_dcmi* FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct stm32_dcmi *dcmi = FUNC7(file);
	struct v4l2_subdev *sd = dcmi->entity.source;
	int ret;

	if (FUNC1(&dcmi->lock))
		return -ERESTARTSYS;

	ret = FUNC4(file);
	if (ret < 0)
		goto unlock;

	if (!FUNC3(file))
		goto fh_rel;

	ret = FUNC6(sd, core, s_power, 1);
	if (ret < 0 && ret != -ENOIOCTLCMD)
		goto fh_rel;

	ret = FUNC0(dcmi, &dcmi->fmt);
	if (ret)
		FUNC6(sd, core, s_power, 0);
fh_rel:
	if (ret)
		FUNC5(file);
unlock:
	FUNC2(&dcmi->lock);
	return ret;
}