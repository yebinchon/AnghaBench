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
struct video_device {int vfl_type; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {int type; int /*<<< orphan*/  fh; int /*<<< orphan*/  vb_vidq; struct cx231xx* dev; } ;
struct cx231xx_buffer {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  slock; } ;
struct TYPE_5__ {int /*<<< orphan*/  slock; } ;
struct TYPE_4__ {scalar_t__ external_av; } ;
struct cx231xx {scalar_t__ users; int video_input; int /*<<< orphan*/  lock; TYPE_3__ vbi_mode; TYPE_2__ video_mode; TYPE_1__ board; int /*<<< orphan*/  dev; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int /*<<< orphan*/  CX231XX_ANALOG_MODE ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INDEX_VANC ; 
 int /*<<< orphan*/  POLARIS_AVMODE_ANALOGT_TV ; 
 int /*<<< orphan*/  POLARIS_AVMODE_ENXTERNAL_AV ; 
 int V4L2_BUF_TYPE_VBI_CAPTURE ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_INTERLACED ; 
 int /*<<< orphan*/  V4L2_FIELD_SEQ_TB ; 
#define  VFL_TYPE_GRABBER 130 
#define  VFL_TYPE_RADIO 129 
#define  VFL_TYPE_VBI 128 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cx231xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cx231xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx231xx*) ; 
 int /*<<< orphan*/  cx231xx_vbi_qops ; 
 int /*<<< orphan*/  cx231xx_video_qops ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errCode ; 
 int /*<<< orphan*/  FUNC8 (struct cx231xx_fh*) ; 
 struct cx231xx_fh* FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_radio ; 
 int /*<<< orphan*/  tuner ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct video_device*) ; 
 int /*<<< orphan*/ * v4l2_type_names ; 
 struct video_device* FUNC14 (struct file*) ; 
 int /*<<< orphan*/  FUNC15 (struct video_device*) ; 
 struct cx231xx* FUNC16 (struct file*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,struct cx231xx_fh*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct file *filp)
{
	int radio = 0;
	struct video_device *vdev = FUNC14(filp);
	struct cx231xx *dev = FUNC16(filp);
	struct cx231xx_fh *fh;
	enum v4l2_buf_type fh_type = 0;

	switch (vdev->vfl_type) {
	case VFL_TYPE_GRABBER:
		fh_type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
		break;
	case VFL_TYPE_VBI:
		fh_type = V4L2_BUF_TYPE_VBI_CAPTURE;
		break;
	case VFL_TYPE_RADIO:
		radio = 1;
		break;
	default:
		return -EINVAL;
	}

	FUNC6("open dev=%s type=%s users=%d\n",
			 FUNC15(vdev), v4l2_type_names[fh_type],
			 dev->users);

#if 0
	errCode = cx231xx_set_mode(dev, CX231XX_ANALOG_MODE);
	if (errCode < 0) {
		dev_err(dev->dev,
			"Device locked on digital mode. Can't open analog\n");
		return -EBUSY;
	}
#endif

	fh = FUNC9(sizeof(struct cx231xx_fh), GFP_KERNEL);
	if (!fh)
		return -ENOMEM;
	if (FUNC10(&dev->lock)) {
		FUNC8(fh);
		return -ERESTARTSYS;
	}
	fh->dev = dev;
	fh->type = fh_type;
	filp->private_data = fh;
	FUNC13(&fh->fh, vdev);

	if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE && dev->users == 0) {
		/* Power up in Analog TV mode */
		if (dev->board.external_av)
			FUNC4(dev,
				 POLARIS_AVMODE_ENXTERNAL_AV);
		else
			FUNC4(dev, POLARIS_AVMODE_ANALOGT_TV);

#if 0
		cx231xx_set_mode(dev, CX231XX_ANALOG_MODE);
#endif

		/* set video alternate setting */
		FUNC5(dev);

		/* Needed, since GPIO might have disabled power of
		   some i2c device */
		FUNC1(dev);

		/* device needs to be initialized before isoc transfer */
		dev->video_input = dev->video_input > 2 ? 2 : dev->video_input;

	}
	if (radio) {
		FUNC6("video_open: setting radio device\n");

		/* cx231xx_start_radio(dev); */

		FUNC0(dev, tuner, s_radio);
	}

	dev->users++;

	if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		FUNC17(&fh->vb_vidq, &cx231xx_video_qops,
					    NULL, &dev->video_mode.slock,
					    fh->type, V4L2_FIELD_INTERLACED,
					    sizeof(struct cx231xx_buffer),
					    fh, &dev->lock);
	if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
		/* Set the required alternate setting  VBI interface works in
		   Bulk mode only */
		FUNC2(dev, INDEX_VANC, 0);

		FUNC17(&fh->vb_vidq, &cx231xx_vbi_qops,
					    NULL, &dev->vbi_mode.slock,
					    fh->type, V4L2_FIELD_SEQ_TB,
					    sizeof(struct cx231xx_buffer),
					    fh, &dev->lock);
	}
	FUNC11(&dev->lock);
	FUNC12(&fh->fh);

	return 0;
}