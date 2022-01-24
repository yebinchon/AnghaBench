#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ source_pad; int /*<<< orphan*/  lock; } ;
struct vsp1_brx {TYPE_1__ entity; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_format {unsigned int pad; struct v4l2_mbus_framefmt format; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ top; scalar_t__ left; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 struct v4l2_rect* FUNC1 (struct vsp1_brx*,struct v4l2_subdev_pad_config*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct vsp1_brx*,struct v4l2_subdev_pad_config*,unsigned int,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vsp1_brx* FUNC5 (struct v4l2_subdev*) ; 
 struct v4l2_subdev_pad_config* FUNC6 (TYPE_1__*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 struct v4l2_mbus_framefmt* FUNC7 (TYPE_1__*,struct v4l2_subdev_pad_config*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *subdev,
			  struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *fmt)
{
	struct vsp1_brx *brx = FUNC5(subdev);
	struct v4l2_subdev_pad_config *config;
	struct v4l2_mbus_framefmt *format;
	int ret = 0;

	FUNC3(&brx->entity.lock);

	config = FUNC6(&brx->entity, cfg, fmt->which);
	if (!config) {
		ret = -EINVAL;
		goto done;
	}

	FUNC2(brx, config, fmt->pad, &fmt->format);

	format = FUNC7(&brx->entity, config, fmt->pad);
	*format = fmt->format;

	/* Reset the compose rectangle. */
	if (fmt->pad != brx->entity.source_pad) {
		struct v4l2_rect *compose;

		compose = FUNC1(brx, config, fmt->pad);
		compose->left = 0;
		compose->top = 0;
		compose->width = format->width;
		compose->height = format->height;
	}

	/* Propagate the format code to all pads. */
	if (fmt->pad == FUNC0(0)) {
		unsigned int i;

		for (i = 0; i <= brx->entity.source_pad; ++i) {
			format = FUNC7(&brx->entity,
							    config, i);
			format->code = fmt->format.code;
		}
	}

done:
	FUNC4(&brx->entity.lock);
	return ret;
}