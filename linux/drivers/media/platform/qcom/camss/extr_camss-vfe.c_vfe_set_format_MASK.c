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
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_selection {TYPE_1__ r; int /*<<< orphan*/  target; scalar_t__ pad; int /*<<< orphan*/  which; int /*<<< orphan*/  member_0; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int /*<<< orphan*/  which; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MSM_VFE_PAD_SINK ; 
 scalar_t__ MSM_VFE_PAD_SRC ; 
 int /*<<< orphan*/  V4L2_SEL_TGT_COMPOSE ; 
 scalar_t__ VFE_LINE_PIX ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct vfe_line*,struct v4l2_subdev_pad_config*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct vfe_line* FUNC1 (struct v4l2_subdev*) ; 
 int FUNC2 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_selection*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfe_line*,struct v4l2_subdev_pad_config*,scalar_t__,struct v4l2_mbus_framefmt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			  struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *fmt)
{
	struct vfe_line *line = FUNC1(sd);
	struct v4l2_mbus_framefmt *format;

	format = FUNC0(line, cfg, fmt->pad, fmt->which);
	if (format == NULL)
		return -EINVAL;

	FUNC3(line, cfg, fmt->pad, &fmt->format, fmt->which);
	*format = fmt->format;

	if (fmt->pad == MSM_VFE_PAD_SINK) {
		struct v4l2_subdev_selection sel = { 0 };
		int ret;

		/* Propagate the format from sink to source */
		format = FUNC0(line, cfg, MSM_VFE_PAD_SRC,
					  fmt->which);

		*format = fmt->format;
		FUNC3(line, cfg, MSM_VFE_PAD_SRC, format,
			       fmt->which);

		if (line->id != VFE_LINE_PIX)
			return 0;

		/* Reset sink pad compose selection */
		sel.which = fmt->which;
		sel.pad = MSM_VFE_PAD_SINK;
		sel.target = V4L2_SEL_TGT_COMPOSE;
		sel.r.width = fmt->format.width;
		sel.r.height = fmt->format.height;
		ret = FUNC2(sd, cfg, &sel);
		if (ret < 0)
			return ret;
	}

	return 0;
}