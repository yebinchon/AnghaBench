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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_format {scalar_t__ which; int pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct s5c73m3_frame_size {int dummy; } ;
struct s5c73m3 {int apply_fmt; int /*<<< orphan*/  lock; scalar_t__ streaming; int /*<<< orphan*/  mbus_code; struct s5c73m3_frame_size const** oif_pix_size; } ;

/* Variables and functions */
 int EBUSY ; 
#define  OIF_ISP_PAD 130 
#define  OIF_JPEG_PAD 129 
#define  OIF_SOURCE_PAD 128 
 size_t RES_ISP ; 
 size_t RES_JPEG ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct s5c73m3* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct s5c73m3*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*,struct s5c73m3_frame_size const**) ; 
 struct v4l2_mbus_framefmt* FUNC4 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			 struct v4l2_subdev_pad_config *cfg,
			 struct v4l2_subdev_format *fmt)
{
	const struct s5c73m3_frame_size *frame_size = NULL;
	struct s5c73m3 *state = FUNC2(sd);
	struct v4l2_mbus_framefmt *mf;
	int ret = 0;

	FUNC0(&state->lock);

	FUNC3(state, cfg, fmt, &frame_size);

	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		mf = FUNC4(sd, cfg, fmt->pad);
		*mf = fmt->format;
		if (fmt->pad == OIF_ISP_PAD) {
			mf = FUNC4(sd, cfg, OIF_SOURCE_PAD);
			mf->width = fmt->format.width;
			mf->height = fmt->format.height;
		}
	} else {
		switch (fmt->pad) {
		case OIF_ISP_PAD:
			state->oif_pix_size[RES_ISP] = frame_size;
			break;
		case OIF_JPEG_PAD:
			state->oif_pix_size[RES_JPEG] = frame_size;
			break;
		case OIF_SOURCE_PAD:
			state->mbus_code = fmt->format.code;
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