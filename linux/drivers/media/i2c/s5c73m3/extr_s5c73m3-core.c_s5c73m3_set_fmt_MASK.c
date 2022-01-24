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
struct v4l2_subdev_format {scalar_t__ which; int pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct s5c73m3_frame_size {int dummy; } ;
struct s5c73m3 {int apply_fmt; int /*<<< orphan*/  lock; scalar_t__ streaming; struct s5c73m3_frame_size const** sensor_pix_size; } ;

/* Variables and functions */
 int EBUSY ; 
 size_t RES_ISP ; 
 size_t RES_JPEG ; 
#define  S5C73M3_ISP_PAD 129 
#define  S5C73M3_JPEG_PAD 128 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct s5c73m3*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*,struct s5c73m3_frame_size const**) ; 
 struct s5c73m3* FUNC3 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC4 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			   struct v4l2_subdev_pad_config *cfg,
			   struct v4l2_subdev_format *fmt)
{
	const struct s5c73m3_frame_size *frame_size = NULL;
	struct s5c73m3 *state = FUNC3(sd);
	struct v4l2_mbus_framefmt *mf;
	int ret = 0;

	FUNC0(&state->lock);

	FUNC2(state, cfg, fmt, &frame_size);

	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		mf = FUNC4(sd, cfg, fmt->pad);
		*mf = fmt->format;
	} else {
		switch (fmt->pad) {
		case S5C73M3_ISP_PAD:
			state->sensor_pix_size[RES_ISP] = frame_size;
			break;
		case S5C73M3_JPEG_PAD:
			state->sensor_pix_size[RES_JPEG] = frame_size;
			break;
		default:
			ret = -EBUSY;
		}

		if (state->streaming)
			ret = -EBUSY;
		else
			state->apply_fmt = 1;
	}

	FUNC1(&state->lock);

	return ret;
}