#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* height; void* width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct v4l2_subdev_selection {scalar_t__ pad; int target; TYPE_1__ r; int /*<<< orphan*/  which; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct resizer_ratio {int dummy; } ;
struct isp_res_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 void* INT_MAX ; 
 scalar_t__ RESZ_PAD_SINK ; 
 scalar_t__ RESZ_PAD_SOURCE ; 
#define  V4L2_SEL_TGT_CROP 129 
#define  V4L2_SEL_TGT_CROP_BOUNDS 128 
 TYPE_1__* FUNC0 (struct isp_res_device*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 struct v4l2_mbus_framefmt* FUNC1 (struct isp_res_device*,struct v4l2_subdev_pad_config*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_res_device*,TYPE_1__*,struct v4l2_mbus_framefmt*,struct resizer_ratio*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_mbus_framefmt*,struct v4l2_mbus_framefmt*,TYPE_1__*) ; 
 struct isp_res_device* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
				 struct v4l2_subdev_pad_config *cfg,
				 struct v4l2_subdev_selection *sel)
{
	struct isp_res_device *res = FUNC4(sd);
	struct v4l2_mbus_framefmt *format_source;
	struct v4l2_mbus_framefmt *format_sink;
	struct resizer_ratio ratio;

	if (sel->pad != RESZ_PAD_SINK)
		return -EINVAL;

	format_sink = FUNC1(res, cfg, RESZ_PAD_SINK,
					   sel->which);
	format_source = FUNC1(res, cfg, RESZ_PAD_SOURCE,
					     sel->which);

	switch (sel->target) {
	case V4L2_SEL_TGT_CROP_BOUNDS:
		sel->r.left = 0;
		sel->r.top = 0;
		sel->r.width = INT_MAX;
		sel->r.height = INT_MAX;

		FUNC3(format_sink, format_source, &sel->r);
		FUNC2(res, &sel->r, format_source, &ratio);
		break;

	case V4L2_SEL_TGT_CROP:
		sel->r = *FUNC0(res, cfg, sel->which);
		FUNC2(res, &sel->r, format_source, &ratio);
		break;

	default:
		return -EINVAL;
	}

	return 0;
}