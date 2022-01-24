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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int /*<<< orphan*/  format; int /*<<< orphan*/  which; } ;
struct v4l2_pix_format {int pixelformat; int bytesperline; int width; int sizeimage; int height; int /*<<< orphan*/  colorspace; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct mcam_format_struct {int pixelformat; int bpp; int /*<<< orphan*/  mbus_code; } ;
struct mcam_camera {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_COLORSPACE_SRGB ; 
#define  V4L2_PIX_FMT_YUV420 129 
#define  V4L2_PIX_FMT_YVU420 128 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_TRY ; 
 struct mcam_format_struct* FUNC0 (int) ; 
 int /*<<< orphan*/  pad ; 
 int FUNC1 (struct mcam_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  set_fmt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct v4l2_pix_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_pix_format*,int /*<<< orphan*/ *) ; 
 struct mcam_camera* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *filp, void *priv,
		struct v4l2_format *fmt)
{
	struct mcam_camera *cam = FUNC4(filp);
	struct mcam_format_struct *f;
	struct v4l2_pix_format *pix = &fmt->fmt.pix;
	struct v4l2_subdev_pad_config pad_cfg;
	struct v4l2_subdev_format format = {
		.which = V4L2_SUBDEV_FORMAT_TRY,
	};
	int ret;

	f = FUNC0(pix->pixelformat);
	pix->pixelformat = f->pixelformat;
	FUNC2(&format.format, pix, f->mbus_code);
	ret = FUNC1(cam, pad, set_fmt, &pad_cfg, &format);
	FUNC3(pix, &format.format);
	pix->bytesperline = pix->width * f->bpp;
	switch (f->pixelformat) {
	case V4L2_PIX_FMT_YUV420:
	case V4L2_PIX_FMT_YVU420:
		pix->sizeimage = pix->height * pix->bytesperline * 3 / 2;
		break;
	default:
		pix->sizeimage = pix->height * pix->bytesperline;
		break;
	}
	pix->colorspace = V4L2_COLORSPACE_SRGB;
	return ret;
}