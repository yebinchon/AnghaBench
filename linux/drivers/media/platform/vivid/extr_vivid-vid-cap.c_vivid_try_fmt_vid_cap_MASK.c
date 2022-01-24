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
struct vivid_fmt {unsigned int buffers; int* bit_depth; int* vdownsampling; unsigned int planes; scalar_t__ color_enc; scalar_t__* data_offset; } ;
struct v4l2_rect {unsigned int width; unsigned int height; unsigned int member_2; unsigned int member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct vivid_dev {int* std_cap; size_t input; struct v4l2_rect src_rect; scalar_t__ has_crop_cap; scalar_t__ has_scaler_cap; int /*<<< orphan*/  has_compose_cap; } ;
struct v4l2_plane_pix_format {unsigned int bytesperline; scalar_t__ sizeimage; int /*<<< orphan*/  reserved; } ;
struct v4l2_pix_format_mplane {unsigned int width; unsigned int height; unsigned int num_planes; int /*<<< orphan*/  reserved; int /*<<< orphan*/  quantization; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  hsv_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; int /*<<< orphan*/  pixelformat; struct v4l2_plane_pix_format* plane_fmt; } ;
struct v4l2_frmsize_discrete {unsigned int width; unsigned int height; } ;
struct TYPE_2__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned int MAX_WIDTH ; 
 unsigned int MAX_ZOOM ; 
 scalar_t__ TGP_COLOR_ENC_HSV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_YUYV ; 
 int V4L2_STD_525_60 ; 
 int /*<<< orphan*/  VIVID_WEBCAM_SIZES ; 
 int /*<<< orphan*/  FUNC1 (struct vivid_dev*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct v4l2_frmsize_discrete* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_rect*,struct v4l2_rect*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_rect*,struct v4l2_rect*) ; 
 struct vivid_dev* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct vivid_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct vivid_dev*,int /*<<< orphan*/ ) ; 
 struct vivid_fmt* FUNC9 (struct vivid_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vivid_dev*) ; 
 scalar_t__ FUNC11 (struct vivid_dev*) ; 
 scalar_t__ FUNC12 (struct vivid_dev*) ; 
 struct v4l2_rect vivid_max_rect ; 
 struct v4l2_rect vivid_min_rect ; 
 int /*<<< orphan*/  FUNC13 (struct vivid_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct vivid_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct vivid_dev*) ; 
 int /*<<< orphan*/  webcam_sizes ; 
 int /*<<< orphan*/  width ; 

int FUNC16(struct file *file, void *priv,
			struct v4l2_format *f)
{
	struct v4l2_pix_format_mplane *mp = &f->fmt.pix_mp;
	struct v4l2_plane_pix_format *pfmt = mp->plane_fmt;
	struct vivid_dev *dev = FUNC6(file);
	const struct vivid_fmt *fmt;
	unsigned bytesperline, max_bpl;
	unsigned factor = 1;
	unsigned w, h;
	unsigned p;

	fmt = FUNC9(dev, mp->pixelformat);
	if (!fmt) {
		FUNC1(dev, 1, "Fourcc format (0x%08x) unknown.\n",
			mp->pixelformat);
		mp->pixelformat = V4L2_PIX_FMT_YUYV;
		fmt = FUNC9(dev, mp->pixelformat);
	}

	mp->field = FUNC8(dev, mp->field);
	if (FUNC12(dev)) {
		const struct v4l2_frmsize_discrete *sz =
			FUNC3(webcam_sizes,
					       VIVID_WEBCAM_SIZES, width,
					       height, mp->width, mp->height);

		w = sz->width;
		h = sz->height;
	} else if (FUNC11(dev)) {
		w = 720;
		h = (dev->std_cap[dev->input] & V4L2_STD_525_60) ? 480 : 576;
	} else {
		w = dev->src_rect.width;
		h = dev->src_rect.height;
	}
	if (FUNC0(mp->field))
		factor = 2;
	if (FUNC12(dev) ||
	    (!dev->has_scaler_cap && !dev->has_crop_cap && !dev->has_compose_cap)) {
		mp->width = w;
		mp->height = h / factor;
	} else {
		struct v4l2_rect r = { 0, 0, mp->width, mp->height * factor };

		FUNC5(&r, &vivid_min_rect);
		FUNC4(&r, &vivid_max_rect);
		if (dev->has_scaler_cap && !dev->has_compose_cap) {
			struct v4l2_rect max_r = { 0, 0, MAX_ZOOM * w, MAX_ZOOM * h };

			FUNC4(&r, &max_r);
		} else if (!dev->has_scaler_cap && dev->has_crop_cap && !dev->has_compose_cap) {
			FUNC4(&r, &dev->src_rect);
		} else if (!dev->has_scaler_cap && !dev->has_crop_cap) {
			FUNC5(&r, &dev->src_rect);
		}
		mp->width = r.width;
		mp->height = r.height / factor;
	}

	/* This driver supports custom bytesperline values */

	mp->num_planes = fmt->buffers;
	for (p = 0; p < fmt->buffers; p++) {
		/* Calculate the minimum supported bytesperline value */
		bytesperline = (mp->width * fmt->bit_depth[p]) >> 3;
		/* Calculate the maximum supported bytesperline value */
		max_bpl = (MAX_ZOOM * MAX_WIDTH * fmt->bit_depth[p]) >> 3;

		if (pfmt[p].bytesperline > max_bpl)
			pfmt[p].bytesperline = max_bpl;
		if (pfmt[p].bytesperline < bytesperline)
			pfmt[p].bytesperline = bytesperline;

		pfmt[p].sizeimage = (pfmt[p].bytesperline * mp->height) /
				fmt->vdownsampling[p] + fmt->data_offset[p];

		FUNC2(pfmt[p].reserved, 0, sizeof(pfmt[p].reserved));
	}
	for (p = fmt->buffers; p < fmt->planes; p++)
		pfmt[0].sizeimage += (pfmt[0].bytesperline * mp->height *
			(fmt->bit_depth[p] / fmt->vdownsampling[p])) /
			(fmt->bit_depth[0] / fmt->vdownsampling[0]);

	mp->colorspace = FUNC7(dev);
	if (fmt->color_enc == TGP_COLOR_ENC_HSV)
		mp->hsv_enc = FUNC10(dev);
	else
		mp->ycbcr_enc = FUNC15(dev);
	mp->xfer_func = FUNC14(dev);
	mp->quantization = FUNC13(dev);
	FUNC2(mp->reserved, 0, sizeof(mp->reserved));
	return 0;
}