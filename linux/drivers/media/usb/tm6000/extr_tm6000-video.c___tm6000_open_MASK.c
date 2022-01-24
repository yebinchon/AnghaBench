#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct video_device {int vfl_type; } ;
struct tm6000_fh {int radio; int type; int /*<<< orphan*/  fh; int /*<<< orphan*/  vb_vidq; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  fmt; struct tm6000_core* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  active; int /*<<< orphan*/  queued; } ;
struct tm6000_core {int radio; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  slock; int /*<<< orphan*/  mode; TYPE_1__ vidq; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  fourcc; int /*<<< orphan*/  users; } ;
struct tm6000_buffer {int dummy; } ;
struct file {struct tm6000_fh* private_data; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_4__ {int /*<<< orphan*/  fourcc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TM6000_MODE_ANALOG ; 
 int V4L2_BUF_TYPE_VBI_CAPTURE ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_DEBUG_OPEN ; 
 int /*<<< orphan*/  V4L2_FIELD_INTERLACED ; 
#define  VFL_TYPE_GRABBER 130 
#define  VFL_TYPE_RADIO 129 
#define  VFL_TYPE_VBI 128 
 int /*<<< orphan*/  FUNC0 (struct tm6000_core*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* format ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tm6000_fh*) ; 
 struct tm6000_fh* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_radio ; 
 int /*<<< orphan*/  FUNC5 (struct tm6000_core*) ; 
 int FUNC6 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC7 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC8 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC9 (struct tm6000_core*) ; 
 int /*<<< orphan*/  tm6000_video_qops ; 
 int /*<<< orphan*/  tuner ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct video_device*) ; 
 int /*<<< orphan*/ * v4l2_type_names ; 
 struct video_device* FUNC14 (struct file*) ; 
 int /*<<< orphan*/  FUNC15 (struct video_device*) ; 
 struct tm6000_core* FUNC16 (struct file*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,struct tm6000_fh*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct file *file)
{
	struct video_device *vdev = FUNC14(file);
	struct tm6000_core *dev = FUNC16(file);
	struct tm6000_fh *fh;
	enum v4l2_buf_type type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	int rc;
	int radio = 0;

	FUNC0(dev, V4L2_DEBUG_OPEN, "tm6000: open called (dev=%s)\n",
		FUNC15(vdev));

	switch (vdev->vfl_type) {
	case VFL_TYPE_GRABBER:
		type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
		break;
	case VFL_TYPE_VBI:
		type = V4L2_BUF_TYPE_VBI_CAPTURE;
		break;
	case VFL_TYPE_RADIO:
		radio = 1;
		break;
	default:
		return -EINVAL;
	}

	/* If more than one user, mutex should be added */
	dev->users++;

	FUNC0(dev, V4L2_DEBUG_OPEN, "open dev=%s type=%s users=%d\n",
		FUNC15(vdev), v4l2_type_names[type],
		dev->users);

	/* allocate + initialize per filehandle data */
	fh = FUNC3(sizeof(*fh), GFP_KERNEL);
	if (NULL == fh) {
		dev->users--;
		return -ENOMEM;
	}

	FUNC13(&fh->fh, vdev);
	file->private_data = fh;
	fh->dev      = dev;
	fh->radio    = radio;
	dev->radio   = radio;
	fh->type     = type;
	dev->fourcc  = format[0].fourcc;

	fh->fmt      = FUNC1(dev->fourcc);

	FUNC5(dev);

	fh->width = dev->width;
	fh->height = dev->height;

	FUNC0(dev, V4L2_DEBUG_OPEN, "Open: fh=%p, dev=%p, dev->vidq=%p\n",
		fh, dev, &dev->vidq);
	FUNC0(dev, V4L2_DEBUG_OPEN, "Open: list_empty queued=%d\n",
		FUNC4(&dev->vidq.queued));
	FUNC0(dev, V4L2_DEBUG_OPEN, "Open: list_empty active=%d\n",
		FUNC4(&dev->vidq.active));

	/* initialize hardware on analog mode */
	rc = FUNC6(dev);
	if (rc < 0) {
		FUNC12(&fh->fh);
		FUNC2(fh);
		return rc;
	}

	dev->mode = TM6000_MODE_ANALOG;

	if (!fh->radio) {
		FUNC17(&fh->vb_vidq, &tm6000_video_qops,
				NULL, &dev->slock,
				fh->type,
				V4L2_FIELD_INTERLACED,
				sizeof(struct tm6000_buffer), fh, &dev->lock);
	} else {
		FUNC0(dev, V4L2_DEBUG_OPEN, "video_open: setting radio device\n");
		FUNC8(dev);
		FUNC10(&dev->v4l2_dev, 0, tuner, s_radio);
		FUNC7(dev);
		FUNC9(dev);
	}
	FUNC11(&fh->fh);

	return 0;
}