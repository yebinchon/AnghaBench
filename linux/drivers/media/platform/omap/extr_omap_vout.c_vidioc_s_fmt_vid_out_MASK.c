#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ pixelformat; int sizeimage; int width; int height; } ;
struct TYPE_9__ {TYPE_4__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct omapvideo_info {struct omap_overlay** overlays; } ;
struct TYPE_8__ {int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
struct TYPE_11__ {TYPE_2__ fmt; } ;
struct omap_vout_device {int bpp; int vrfb_bpp; int /*<<< orphan*/  win; int /*<<< orphan*/  crop; TYPE_6__ fbuf; TYPE_4__ pix; struct omapvideo_info vid_info; int /*<<< orphan*/  vq; } ;
struct omap_video_timings {int /*<<< orphan*/  x_res; int /*<<< orphan*/  y_res; } ;
struct omap_overlay {struct omap_dss_device* (* get_device ) (struct omap_overlay*) ;} ;
struct TYPE_7__ {struct omap_video_timings timings; } ;
struct omap_dss_device {TYPE_1__ panel; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ V4L2_PIX_FMT_RGB24 ; 
 scalar_t__ V4L2_PIX_FMT_UYVY ; 
 scalar_t__ V4L2_PIX_FMT_YUYV ; 
 scalar_t__ FUNC0 (struct omap_vout_device*) ; 
 scalar_t__ FUNC1 (struct omap_vout_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_4__*) ; 
 struct omap_dss_device* FUNC4 (struct omap_overlay*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct omap_vout_device* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *fh,
			struct v4l2_format *f)
{
	int ret, bpp;
	struct omap_overlay *ovl;
	struct omapvideo_info *ovid;
	struct omap_video_timings *timing;
	struct omap_vout_device *vout = FUNC6(file);
	struct omap_dss_device *dssdev;

	if (FUNC5(&vout->vq))
		return -EBUSY;

	ovid = &vout->vid_info;
	ovl = ovid->overlays[0];
	dssdev = ovl->get_device(ovl);

	/* get the display device attached to the overlay */
	if (!dssdev) {
		ret = -EINVAL;
		goto s_fmt_vid_out_exit;
	}
	timing = &dssdev->panel.timings;

	/* We don't support RGB24-packed mode if vrfb rotation
	 * is enabled*/
	if ((FUNC1(vout)) &&
			f->fmt.pix.pixelformat == V4L2_PIX_FMT_RGB24) {
		ret = -EINVAL;
		goto s_fmt_vid_out_exit;
	}

	/* get the framebuffer parameters */

	if (FUNC0(vout)) {
		vout->fbuf.fmt.height = timing->x_res;
		vout->fbuf.fmt.width = timing->y_res;
	} else {
		vout->fbuf.fmt.height = timing->y_res;
		vout->fbuf.fmt.width = timing->x_res;
	}

	/* change to smaller size is OK */

	bpp = FUNC3(&f->fmt.pix);
	f->fmt.pix.sizeimage = f->fmt.pix.width * f->fmt.pix.height * bpp;

	/* try & set the new output format */
	vout->bpp = bpp;
	vout->pix = f->fmt.pix;
	vout->vrfb_bpp = 1;

	/* If YUYV then vrfb bpp is 2, for  others its 1 */
	if (V4L2_PIX_FMT_YUYV == vout->pix.pixelformat ||
			V4L2_PIX_FMT_UYVY == vout->pix.pixelformat)
		vout->vrfb_bpp = 2;

	/* set default crop and win */
	FUNC2(&vout->pix, &vout->fbuf, &vout->crop, &vout->win);

	ret = 0;

s_fmt_vid_out_exit:
	return ret;
}