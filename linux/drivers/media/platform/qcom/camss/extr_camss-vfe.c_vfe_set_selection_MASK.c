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
struct vfe_line {scalar_t__ id; } ;
struct v4l2_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_selection {scalar_t__ target; scalar_t__ pad; int /*<<< orphan*/  which; struct v4l2_rect r; int /*<<< orphan*/  member_0; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_format {TYPE_1__ format; scalar_t__ pad; int /*<<< orphan*/  which; int /*<<< orphan*/  member_0; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MSM_VFE_PAD_SINK ; 
 scalar_t__ MSM_VFE_PAD_SRC ; 
 scalar_t__ V4L2_SEL_TGT_COMPOSE ; 
 scalar_t__ V4L2_SEL_TGT_CROP ; 
 scalar_t__ VFE_LINE_PIX ; 
 struct v4l2_rect* FUNC0 (struct vfe_line*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 struct v4l2_rect* FUNC1 (struct vfe_line*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 struct vfe_line* FUNC2 (struct v4l2_subdev*) ; 
 int FUNC3 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ; 
 int FUNC4 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfe_line*,struct v4l2_subdev_pad_config*,struct v4l2_rect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vfe_line*,struct v4l2_subdev_pad_config*,struct v4l2_rect*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd,
			     struct v4l2_subdev_pad_config *cfg,
			     struct v4l2_subdev_selection *sel)
{
	struct vfe_line *line = FUNC2(sd);
	struct v4l2_rect *rect;
	int ret;

	if (line->id != VFE_LINE_PIX)
		return -EINVAL;

	if (sel->target == V4L2_SEL_TGT_COMPOSE &&
		sel->pad == MSM_VFE_PAD_SINK) {
		struct v4l2_subdev_selection crop = { 0 };

		rect = FUNC0(line, cfg, sel->which);
		if (rect == NULL)
			return -EINVAL;

		FUNC5(line, cfg, &sel->r, sel->which);
		*rect = sel->r;

		/* Reset source crop selection */
		crop.which = sel->which;
		crop.pad = MSM_VFE_PAD_SRC;
		crop.target = V4L2_SEL_TGT_CROP;
		crop.r = *rect;
		ret = FUNC7(sd, cfg, &crop);
	} else if (sel->target == V4L2_SEL_TGT_CROP &&
		sel->pad == MSM_VFE_PAD_SRC) {
		struct v4l2_subdev_format fmt = { 0 };

		rect = FUNC1(line, cfg, sel->which);
		if (rect == NULL)
			return -EINVAL;

		FUNC6(line, cfg, &sel->r, sel->which);
		*rect = sel->r;

		/* Reset source pad format width and height */
		fmt.which = sel->which;
		fmt.pad = MSM_VFE_PAD_SRC;
		ret = FUNC3(sd, cfg, &fmt);
		if (ret < 0)
			return ret;

		fmt.format.width = rect->width;
		fmt.format.height = rect->height;
		ret = FUNC4(sd, cfg, &fmt);
	} else {
		ret = -EINVAL;
	}

	return ret;
}