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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev_format {int /*<<< orphan*/  format; int /*<<< orphan*/  which; int /*<<< orphan*/  member_0; } ;
struct v4l2_pix_format {int pixelformat; scalar_t__ width; scalar_t__ height; scalar_t__ bytesperline; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cobalt_stream {int pixfmt; scalar_t__ width; scalar_t__ height; scalar_t__ stride; int /*<<< orphan*/  sd; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  bpp; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  COBALT_BYTES_PER_PIXEL_RGB32 ; 
 int /*<<< orphan*/  COBALT_BYTES_PER_PIXEL_YUYV ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_RGB888_1X24 ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_UYVY8_1X16 ; 
#define  V4L2_PIX_FMT_BGR32 129 
#define  V4L2_PIX_FMT_YUYV 128 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 scalar_t__ FUNC0 (struct file*,void*,struct v4l2_format*) ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  set_fmt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct v4l2_pix_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct cobalt_stream* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv_fh,
		struct v4l2_format *f)
{
	struct cobalt_stream *s = FUNC4(file);
	struct v4l2_pix_format *pix = &f->fmt.pix;
	struct v4l2_subdev_format sd_fmt = { 0 };
	u32 code;

	if (FUNC0(file, priv_fh, f))
		return -EINVAL;

	if (FUNC3(&s->q) && (pix->pixelformat != s->pixfmt ||
	    pix->width != s->width || pix->height != s->height ||
	    pix->bytesperline != s->stride))
		return -EBUSY;

	switch (pix->pixelformat) {
	case V4L2_PIX_FMT_YUYV:
		s->bpp = COBALT_BYTES_PER_PIXEL_YUYV;
		code = MEDIA_BUS_FMT_UYVY8_1X16;
		break;
	case V4L2_PIX_FMT_BGR32:
		s->bpp = COBALT_BYTES_PER_PIXEL_RGB32;
		code = MEDIA_BUS_FMT_RGB888_1X24;
		break;
	default:
		return -EINVAL;
	}
	s->width = pix->width;
	s->height = pix->height;
	s->stride = pix->bytesperline;
	s->pixfmt = pix->pixelformat;
	s->colorspace = pix->colorspace;
	s->xfer_func = pix->xfer_func;
	s->ycbcr_enc = pix->ycbcr_enc;
	s->quantization = pix->quantization;
	sd_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
	FUNC1(&sd_fmt.format, pix, code);
	FUNC2(s->sd, pad, set_fmt, NULL, &sd_fmt);
	return 0;
}