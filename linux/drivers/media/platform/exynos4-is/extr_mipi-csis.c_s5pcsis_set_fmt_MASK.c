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
struct v4l2_subdev_format {scalar_t__ pad; int /*<<< orphan*/  which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct csis_state {int /*<<< orphan*/  lock; struct csis_pix_format const* csis_fmt; } ;
struct csis_pix_format {int dummy; } ;

/* Variables and functions */
 scalar_t__ CSIS_PAD_SOURCE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct csis_state*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct csis_pix_format* FUNC3 (struct v4l2_mbus_framefmt*) ; 
 struct csis_state* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
			   struct v4l2_subdev_format *fmt)
{
	struct csis_state *state = FUNC4(sd);
	struct csis_pix_format const *csis_fmt;
	struct v4l2_mbus_framefmt *mf;

	mf = FUNC0(state, cfg, fmt->which);

	if (fmt->pad == CSIS_PAD_SOURCE) {
		if (mf) {
			FUNC1(&state->lock);
			fmt->format = *mf;
			FUNC2(&state->lock);
		}
		return 0;
	}
	csis_fmt = FUNC3(&fmt->format);
	if (mf) {
		FUNC1(&state->lock);
		*mf = fmt->format;
		if (fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE)
			state->csis_fmt = csis_fmt;
		FUNC2(&state->lock);
	}
	return 0;
}