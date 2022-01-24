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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; int pad; int /*<<< orphan*/  format; } ;
struct v4l2_subdev {int dummy; } ;
struct s5c73m3_frame_size {int dummy; } ;
struct s5c73m3 {int /*<<< orphan*/  lock; struct s5c73m3_frame_size** sensor_pix_size; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t RES_ISP ; 
 size_t RES_JPEG ; 
 int /*<<< orphan*/  S5C73M3_ISP_FMT ; 
#define  S5C73M3_ISP_PAD 129 
 int /*<<< orphan*/  S5C73M3_JPEG_FMT ; 
#define  S5C73M3_JPEG_PAD 128 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct s5c73m3_frame_size const*,int /*<<< orphan*/ ) ; 
 struct s5c73m3* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/ * FUNC4 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			   struct v4l2_subdev_pad_config *cfg,
			   struct v4l2_subdev_format *fmt)
{
	struct s5c73m3 *state = FUNC3(sd);
	const struct s5c73m3_frame_size *fs;
	u32 code;

	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		fmt->format = *FUNC4(sd, cfg, fmt->pad);
		return 0;
	}

	FUNC0(&state->lock);

	switch (fmt->pad) {
	case S5C73M3_ISP_PAD:
		code = S5C73M3_ISP_FMT;
		fs = state->sensor_pix_size[RES_ISP];
		break;
	case S5C73M3_JPEG_PAD:
		code = S5C73M3_JPEG_FMT;
		fs = state->sensor_pix_size[RES_JPEG];
		break;
	default:
		FUNC1(&state->lock);
		return -EINVAL;
	}
	FUNC2(&fmt->format, fs, code);

	FUNC1(&state->lock);
	return 0;
}