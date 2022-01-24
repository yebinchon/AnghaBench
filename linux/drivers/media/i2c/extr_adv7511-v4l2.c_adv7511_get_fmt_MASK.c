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
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; TYPE_1__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  code; } ;
struct adv7511_state {int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  fmt_code; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (struct adv7511_state*,TYPE_1__*) ; 
 struct adv7511_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct v4l2_mbus_framefmt* FUNC3 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			   struct v4l2_subdev_pad_config *cfg,
			   struct v4l2_subdev_format *format)
{
	struct adv7511_state *state = FUNC1(sd);

	if (format->pad != 0)
		return -EINVAL;

	FUNC2(&format->format, 0, sizeof(format->format));
	FUNC0(state, &format->format);

	if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
		struct v4l2_mbus_framefmt *fmt;

		fmt = FUNC3(sd, cfg, format->pad);
		format->format.code = fmt->code;
		format->format.colorspace = fmt->colorspace;
		format->format.ycbcr_enc = fmt->ycbcr_enc;
		format->format.quantization = fmt->quantization;
		format->format.xfer_func = fmt->xfer_func;
	} else {
		format->format.code = state->fmt_code;
		format->format.colorspace = state->colorspace;
		format->format.ycbcr_enc = state->ycbcr_enc;
		format->format.quantization = state->quantization;
		format->format.xfer_func = state->xfer_func;
	}

	return 0;
}