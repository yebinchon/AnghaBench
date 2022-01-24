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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  res_type; } ;

/* Variables and functions */
 int EINVAL ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct m5mols_info*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct m5mols_info* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *fmt)
{
	struct m5mols_info *info = FUNC3(sd);
	struct v4l2_mbus_framefmt *format;
	int ret = 0;

	FUNC1(&info->lock);

	format = FUNC0(info, cfg, fmt->which, info->res_type);
	if (format)
		fmt->format = *format;
	else
		ret = -EINVAL;

	FUNC2(&info->lock);
	return ret;
}