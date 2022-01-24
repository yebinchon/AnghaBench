#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct video_device {int dummy; } ;
struct v4l2_pix_format {scalar_t__ pixelformat; int bytesperline; int width; int height; int sizeimage; int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; } ;
struct TYPE_5__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_6__ {scalar_t__ pixelformat; int width; int height; int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; } ;
struct TYPE_7__ {TYPE_2__ pix; } ;
struct TYPE_8__ {TYPE_3__ fmt; } ;
struct common_obj {TYPE_4__ fmt; } ;
struct channel_obj {struct common_obj* common; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_PIX_FMT_YUV422P ; 
 size_t VPIF_VIDEO_INDEX ; 
 struct video_device* FUNC0 (struct file*) ; 
 struct channel_obj* FUNC1 (struct video_device*) ; 
 scalar_t__ FUNC2 (struct channel_obj*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				struct v4l2_format *fmt)
{
	struct video_device *vdev = FUNC0(file);
	struct channel_obj *ch = FUNC1(vdev);
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
	struct v4l2_pix_format *pixfmt = &fmt->fmt.pix;

	/*
	 * to suppress v4l-compliance warnings silently correct
	 * the pixelformat
	 */
	if (pixfmt->pixelformat != V4L2_PIX_FMT_YUV422P)
		pixfmt->pixelformat = common->fmt.fmt.pix.pixelformat;

	if (FUNC2(ch))
		return -EINVAL;

	pixfmt->colorspace = common->fmt.fmt.pix.colorspace;
	pixfmt->field = common->fmt.fmt.pix.field;
	pixfmt->bytesperline = common->fmt.fmt.pix.width;
	pixfmt->width = common->fmt.fmt.pix.width;
	pixfmt->height = common->fmt.fmt.pix.height;
	pixfmt->sizeimage = pixfmt->bytesperline * pixfmt->height * 2;

	return 0;
}