#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_format {int /*<<< orphan*/  format; int /*<<< orphan*/  which; } ;
struct TYPE_7__ {int sizeimage; scalar_t__ bytesperline; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_6__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct TYPE_5__ {int nr_packets; } ;
struct saa7134_dev {TYPE_1__ ts; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEDIA_BUS_FMT_FIXED ; 
 int TS_PACKET_SIZE ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_MPEG ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  set_fmt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 struct saa7134_dev* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				struct v4l2_format *f)
{
	struct saa7134_dev *dev = FUNC3(file);
	struct v4l2_subdev_format format = {
		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
	};

	FUNC1(&format.format, &f->fmt.pix, MEDIA_BUS_FMT_FIXED);
	FUNC0(dev, pad, set_fmt, NULL, &format);
	FUNC2(&f->fmt.pix, &format.format);

	f->fmt.pix.pixelformat  = V4L2_PIX_FMT_MPEG;
	f->fmt.pix.sizeimage    = TS_PACKET_SIZE * dev->ts.nr_packets;
	f->fmt.pix.bytesperline = 0;

	return 0;
}