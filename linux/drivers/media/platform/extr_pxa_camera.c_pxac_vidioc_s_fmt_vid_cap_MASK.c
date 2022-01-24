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
struct v4l2_subdev_format {int /*<<< orphan*/  format; int /*<<< orphan*/  which; } ;
struct v4l2_pix_format {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct pxa_camera_format_xlate {int /*<<< orphan*/  code; } ;
struct pxa_camera_dev {struct v4l2_pix_format current_pix; struct pxa_camera_format_xlate const* current_fmt; int /*<<< orphan*/  user_formats; int /*<<< orphan*/  lock; int /*<<< orphan*/  vb2_vq; scalar_t__ active; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_camera_dev*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pxa_camera_dev*) ; 
 struct pxa_camera_format_xlate* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct file*,void*,struct v4l2_format*) ; 
 int FUNC7 (struct pxa_camera_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  set_fmt ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct v4l2_pix_format*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 struct pxa_camera_dev* FUNC12 (struct file*) ; 

__attribute__((used)) static int FUNC13(struct file *filp, void *priv,
				    struct v4l2_format *f)
{
	struct pxa_camera_dev *pcdev = FUNC12(filp);
	const struct pxa_camera_format_xlate *xlate;
	struct v4l2_pix_format *pix = &f->fmt.pix;
	struct v4l2_subdev_format format = {
		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
	};
	unsigned long flags;
	int ret, is_busy;

	FUNC0(FUNC2(pcdev),
		"s_fmt_vid_cap(pix=%dx%d:%x)\n",
		pix->width, pix->height, pix->pixelformat);

	FUNC8(&pcdev->lock, flags);
	is_busy = pcdev->active || FUNC11(&pcdev->vb2_vq);
	FUNC9(&pcdev->lock, flags);

	if (is_busy)
		return -EBUSY;

	ret = FUNC6(filp, priv, f);
	if (ret)
		return ret;

	xlate = FUNC5(pcdev->user_formats,
					 pix->pixelformat);
	FUNC10(&format.format, pix, xlate->code);
	ret = FUNC7(pcdev, pad, set_fmt, NULL, &format);
	if (ret < 0) {
		FUNC1(FUNC2(pcdev),
			 "Failed to configure for format %x\n",
			 pix->pixelformat);
	} else if (FUNC3(pix->width, pix->height)) {
		FUNC1(FUNC2(pcdev),
			 "Camera driver produced an unsupported frame %dx%d\n",
			 pix->width, pix->height);
		return -EINVAL;
	}

	pcdev->current_fmt = xlate;
	pcdev->current_pix = *pix;

	ret = FUNC4(pcdev);
	return ret;
}