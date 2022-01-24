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
typedef  void* u32 ;
typedef  int /*<<< orphan*/  subfmt ;
struct TYPE_4__ {int width; int height; void* colorspace; void* field; int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {TYPE_1__ format; int /*<<< orphan*/  which; } ;
struct TYPE_5__ {int width; int height; int bytesperline; int sizeimage; void* colorspace; void* field; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int width; int height; int /*<<< orphan*/  cx25840; void* field_order; int /*<<< orphan*/  videoqueue; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_FIXED ; 
 void* V4L2_COLORSPACE_SMPTE170M ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_UYVY ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_TRY ; 
 void* FUNC0 (struct cxusb_medion_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev_format*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  set_fmt ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct dvb_usb_device* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file,
					  struct v4l2_format *f,
					  bool isset)
{
	struct dvb_usb_device *dvbdev = FUNC5(file);
	struct cxusb_medion_dev *cxdev = dvbdev->priv;
	struct v4l2_subdev_format subfmt;
	u32 field;
	int ret;

	if (isset && FUNC3(&cxdev->videoqueue))
		return -EBUSY;

	field = FUNC4(&cxdev->videoqueue) ?
		cxdev->field_order : FUNC0(cxdev);

	FUNC1(&subfmt, 0, sizeof(subfmt));
	subfmt.which = isset ? V4L2_SUBDEV_FORMAT_ACTIVE :
		V4L2_SUBDEV_FORMAT_TRY;
	subfmt.format.width = f->fmt.pix.width & ~1;
	subfmt.format.height = f->fmt.pix.height & ~1;
	subfmt.format.code = MEDIA_BUS_FMT_FIXED;
	subfmt.format.field = field;
	subfmt.format.colorspace = V4L2_COLORSPACE_SMPTE170M;

	ret = FUNC2(cxdev->cx25840, pad, set_fmt, NULL, &subfmt);
	if (ret != 0)
		return ret;

	f->fmt.pix.width = subfmt.format.width;
	f->fmt.pix.height = subfmt.format.height;
	f->fmt.pix.pixelformat = V4L2_PIX_FMT_UYVY;
	f->fmt.pix.field = field;
	f->fmt.pix.bytesperline = f->fmt.pix.width * 2;
	f->fmt.pix.sizeimage = f->fmt.pix.bytesperline * f->fmt.pix.height;
	f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;

	if (isset) {
		cxdev->width = f->fmt.pix.width;
		cxdev->height = f->fmt.pix.height;
	}

	return 0;
}