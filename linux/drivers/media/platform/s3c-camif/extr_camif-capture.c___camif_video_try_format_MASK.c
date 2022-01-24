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
struct vp_pix_limits {int min_out_width; int out_width_align; int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_sc_out_width; } ;
struct v4l2_rect {unsigned int width; unsigned int height; } ;
struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  pixelformat; } ;
struct camif_vp {size_t id; struct camif_dev* camif; } ;
struct camif_fmt {int ybpp; int depth; int /*<<< orphan*/  fourcc; } ;
struct camif_dev {TYPE_1__* variant; struct v4l2_rect camif_crop; } ;
struct TYPE_2__ {struct vp_pix_limits* vp_pix_limits; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SCALER_MAX_RATIO ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_JPEG ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,unsigned int,unsigned int,unsigned int,...) ; 
 unsigned int FUNC5 (unsigned int,int) ; 
 struct camif_fmt* FUNC6 (struct camif_vp*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u32 ; 
 int /*<<< orphan*/  FUNC7 (int*,unsigned int,int /*<<< orphan*/ ,int,int*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct camif_vp *vp,
				    struct v4l2_pix_format *pix,
				    const struct camif_fmt **ffmt)
{
	struct camif_dev *camif = vp->camif;
	struct v4l2_rect *crop = &camif->camif_crop;
	unsigned int wmin, hmin, sc_hrmax, sc_vrmax;
	const struct vp_pix_limits *pix_lim;
	const struct camif_fmt *fmt;

	fmt = FUNC6(vp, &pix->pixelformat, 0);

	if (FUNC0(fmt == NULL))
		return -EINVAL;

	if (ffmt)
		*ffmt = fmt;

	pix_lim = &camif->variant->vp_pix_limits[vp->id];

	FUNC4("fmt: %ux%u, crop: %ux%u, bytesperline: %u\n",
		 pix->width, pix->height, crop->width, crop->height,
		 pix->bytesperline);
	/*
	 * Calculate minimum width and height according to the configured
	 * camera input interface crop rectangle and the resizer's capabilities.
	 */
	sc_hrmax = FUNC3(SCALER_MAX_RATIO, 1 << (FUNC1(crop->width) - 3));
	sc_vrmax = FUNC3(SCALER_MAX_RATIO, 1 << (FUNC1(crop->height) - 1));

	wmin = FUNC2(u32, pix_lim->min_out_width, crop->width / sc_hrmax);
	wmin = FUNC5(wmin, pix_lim->out_width_align);
	hmin = FUNC2(u32, 8, crop->height / sc_vrmax);
	hmin = FUNC5(hmin, 8);

	FUNC7(&pix->width, wmin, pix_lim->max_sc_out_width,
			      FUNC1(pix_lim->out_width_align) - 1,
			      &pix->height, hmin, pix_lim->max_height, 0, 0);

	pix->bytesperline = pix->width * fmt->ybpp;
	pix->sizeimage = (pix->width * pix->height * fmt->depth) / 8;
	pix->pixelformat = fmt->fourcc;
	pix->colorspace = V4L2_COLORSPACE_JPEG;
	pix->field = V4L2_FIELD_NONE;

	FUNC4("%ux%u, wmin: %d, hmin: %d, sc_hrmax: %d, sc_vrmax: %d\n",
		 pix->width, pix->height, wmin, hmin, sc_hrmax, sc_vrmax);

	return 0;
}