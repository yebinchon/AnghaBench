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
struct v4l2_pix_format_mplane {unsigned int num_planes; unsigned int width; unsigned int height; TYPE_1__* plane_fmt; int /*<<< orphan*/  reserved; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  quantization; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  field; } ;
struct sun4i_csi_format {unsigned int num_planes; int hsub; int vsub; unsigned int* bpp; int /*<<< orphan*/  fourcc; } ;
struct sun4i_csi {int dummy; } ;
struct TYPE_2__ {unsigned int bytesperline; unsigned int sizeimage; int /*<<< orphan*/  reserved; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  CSI_MAX_HEIGHT ; 
 int /*<<< orphan*/  CSI_MAX_WIDTH ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SRGB ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sun4i_csi_format* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sun4i_csi_format* sun4i_csi_formats ; 

__attribute__((used)) static void FUNC7(struct sun4i_csi *csi,
			       struct v4l2_pix_format_mplane *pix)
{
	const struct sun4i_csi_format *_fmt;
	unsigned int height, width;
	unsigned int i;

	_fmt = FUNC6(&pix->pixelformat, NULL);
	if (!_fmt)
		_fmt = &sun4i_csi_formats[0];

	pix->field = V4L2_FIELD_NONE;
	pix->colorspace = V4L2_COLORSPACE_SRGB;
	pix->xfer_func = FUNC2(pix->colorspace);
	pix->ycbcr_enc = FUNC3(pix->colorspace);
	pix->quantization = FUNC1(true, pix->colorspace,
							  pix->ycbcr_enc);

	pix->num_planes = _fmt->num_planes;
	pix->pixelformat = _fmt->fourcc;

	FUNC5(pix->reserved, 0, sizeof(pix->reserved));

	/* Align the width and height on the subsampling */
	width = FUNC0(pix->width, _fmt->hsub);
	height = FUNC0(pix->height, _fmt->vsub);

	/* Clamp the width and height to our capabilities */
	pix->width = FUNC4(width, _fmt->hsub, CSI_MAX_WIDTH);
	pix->height = FUNC4(height, _fmt->vsub, CSI_MAX_HEIGHT);

	for (i = 0; i < _fmt->num_planes; i++) {
		unsigned int hsub = i > 0 ? _fmt->hsub : 1;
		unsigned int vsub = i > 0 ? _fmt->vsub : 1;
		unsigned int bpl;

		bpl = pix->width / hsub * _fmt->bpp[i] / 8;
		pix->plane_fmt[i].bytesperline = bpl;
		pix->plane_fmt[i].sizeimage = bpl * pix->height / vsub;
		FUNC5(pix->plane_fmt[i].reserved, 0,
		       sizeof(pix->plane_fmt[i].reserved));
	}
}