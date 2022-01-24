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
struct v4l2_mbus_framefmt {int field; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int /*<<< orphan*/  which; } ;
struct v4l2_pix_format {scalar_t__ pixelformat; int field; int bytesperline; int sizeimage; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct pxa_camera_format_xlate {int /*<<< orphan*/  host_fmt; int /*<<< orphan*/  code; } ;
struct pxa_camera_dev {int /*<<< orphan*/  user_formats; } ;
struct file {int dummy; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_FIELD_ANY 129 
#define  V4L2_FIELD_NONE 128 
 scalar_t__ V4L2_PIX_FMT_YUV422P ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_camera_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct pxa_camera_format_xlate* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (struct pxa_camera_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  set_fmt ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_mbus_framefmt*,struct v4l2_pix_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_pix_format*,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 
 struct pxa_camera_dev* FUNC10 (struct file*) ; 

__attribute__((used)) static int FUNC11(struct file *filp, void *priv,
				      struct v4l2_format *f)
{
	struct pxa_camera_dev *pcdev = FUNC10(filp);
	const struct pxa_camera_format_xlate *xlate;
	struct v4l2_pix_format *pix = &f->fmt.pix;
	struct v4l2_subdev_pad_config pad_cfg;
	struct v4l2_subdev_format format = {
		.which = V4L2_SUBDEV_FORMAT_TRY,
	};
	struct v4l2_mbus_framefmt *mf = &format.format;
	__u32 pixfmt = pix->pixelformat;
	int ret;

	xlate = FUNC5(pcdev->user_formats, pixfmt);
	if (!xlate) {
		FUNC1(FUNC2(pcdev), "Format %x not found\n", pixfmt);
		return -EINVAL;
	}

	/*
	 * Limit to pxa hardware capabilities.  YUV422P planar format requires
	 * images size to be a multiple of 16 bytes.  If not, zeros will be
	 * inserted between Y and U planes, and U and V planes, which violates
	 * the YUV422P standard.
	 */
	FUNC9(&pix->width, 48, 2048, 1,
			      &pix->height, 32, 2048, 0,
			      pixfmt == V4L2_PIX_FMT_YUV422P ? 4 : 0);

	FUNC7(mf, pix, xlate->code);
	ret = FUNC6(pcdev, pad, set_fmt, &pad_cfg, &format);
	if (ret < 0)
		return ret;

	FUNC8(pix, mf);

	/* Only progressive video supported so far */
	switch (mf->field) {
	case V4L2_FIELD_ANY:
	case V4L2_FIELD_NONE:
		pix->field = V4L2_FIELD_NONE;
		break;
	default:
		/* TODO: support interlaced at least in pass-through mode */
		FUNC0(FUNC2(pcdev), "Field type %d unsupported.\n",
			mf->field);
		return -EINVAL;
	}

	ret = FUNC3(pix->width, xlate->host_fmt);
	if (ret < 0)
		return ret;

	pix->bytesperline = ret;
	ret = FUNC4(xlate->host_fmt, pix->bytesperline,
				  pix->height);
	if (ret < 0)
		return ret;

	pix->sizeimage = ret;
	return 0;
}