#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_mbus_framefmt {int width; } ;
struct TYPE_4__ {int top; int left; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_5__ {TYPE_1__ active; } ;
struct TYPE_6__ {scalar_t__ horz; } ;
struct isp_res_device {scalar_t__ input; int crop_offset; TYPE_2__ crop; scalar_t__ addr_base; TYPE_3__ ratio; } ;

/* Variables and functions */
 scalar_t__ RESIZER_INPUT_MEMORY ; 
 scalar_t__ RESIZE_DIVISOR ; 
 int /*<<< orphan*/  RSZ_BILINEAR ; 
 int /*<<< orphan*/  RSZ_THE_SAME ; 
 int /*<<< orphan*/  FUNC0 (struct isp_res_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_res_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_res_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_res_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_res_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_res_device*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_res_device*,int,int) ; 

__attribute__((used)) static void FUNC7(struct isp_res_device *res,
				    const struct v4l2_mbus_framefmt *input,
				    const struct v4l2_mbus_framefmt *output)
{
	FUNC5(res, &res->ratio);

	/* Set chrominance horizontal algorithm */
	if (res->ratio.horz >= RESIZE_DIVISOR)
		FUNC2(res, RSZ_THE_SAME);
	else
		FUNC2(res, RSZ_BILINEAR);

	FUNC1(res);

	if (res->input == RESIZER_INPUT_MEMORY) {
		/* Calculate additional offset for crop */
		res->crop_offset = (res->crop.active.top * input->width +
				    res->crop.active.left) * 2;
		/*
		 * Write lowest 4 bits of horizontal pixel offset (in pixels),
		 * vertical start must be 0.
		 */
		FUNC6(res, (res->crop_offset / 2) & 0xf, 0);

		/*
		 * Set start (read) address for cropping, in bytes.
		 * Lowest 5 bits must be zero.
		 */
		FUNC0(res,
				res->addr_base + (res->crop_offset & ~0x1f));
	} else {
		/*
		 * Set vertical start line and horizontal starting pixel.
		 * If the input is from CCDC/PREV, horizontal start field is
		 * in bytes (twice number of pixels).
		 */
		FUNC6(res, res->crop.active.left * 2,
				  res->crop.active.top);
		/* Input address and offset must be 0 for preview/ccdc input */
		FUNC0(res, 0);
		FUNC3(res, 0);
	}

	/* Set the input size */
	FUNC4(res, res->crop.active.width,
			       res->crop.active.height);
}