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
struct TYPE_4__ {int width; unsigned int height; int bytesperline; int sizeimage; int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct tw686x_video_channel {int /*<<< orphan*/  video_standard; struct tw686x_dev* dev; } ;
struct tw686x_format {int depth; int /*<<< orphan*/  fourcc; } ;
struct tw686x_dev {TYPE_3__* dma_ops; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  field; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int TW686X_VIDEO_WIDTH ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SMPTE170M ; 
 struct tw686x_format* FUNC1 (int /*<<< orphan*/ ) ; 
 struct tw686x_format* formats ; 
 struct tw686x_video_channel* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				  struct v4l2_format *f)
{
	struct tw686x_video_channel *vc = FUNC2(file);
	struct tw686x_dev *dev = vc->dev;
	unsigned int video_height = FUNC0(vc->video_standard);
	const struct tw686x_format *format;

	format = FUNC1(f->fmt.pix.pixelformat);
	if (!format) {
		format = &formats[0];
		f->fmt.pix.pixelformat = format->fourcc;
	}

	if (f->fmt.pix.width <= TW686X_VIDEO_WIDTH / 2)
		f->fmt.pix.width = TW686X_VIDEO_WIDTH / 2;
	else
		f->fmt.pix.width = TW686X_VIDEO_WIDTH;

	if (f->fmt.pix.height <= video_height / 2)
		f->fmt.pix.height = video_height / 2;
	else
		f->fmt.pix.height = video_height;

	f->fmt.pix.bytesperline = (f->fmt.pix.width * format->depth) / 8;
	f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
	f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
	f->fmt.pix.field = dev->dma_ops->field;

	return 0;
}