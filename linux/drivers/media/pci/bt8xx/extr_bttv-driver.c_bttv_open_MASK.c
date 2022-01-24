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
struct video_device {scalar_t__ vfl_type; } ;
struct file {struct bttv_fh* private_data; } ;
struct TYPE_4__ {scalar_t__ setup_ok; } ;
struct bttv_fh {int type; int do_crop; int /*<<< orphan*/  fh; int /*<<< orphan*/  vbi_fmt; int /*<<< orphan*/  vbi; int /*<<< orphan*/  cap; TYPE_1__ ov; } ;
struct bttv_buffer {int dummy; } ;
struct TYPE_6__ {TYPE_2__* pci; int /*<<< orphan*/  nr; } ;
struct bttv {int /*<<< orphan*/  tvnorm; int /*<<< orphan*/  mute; int /*<<< orphan*/  input; int /*<<< orphan*/  lock; int /*<<< orphan*/  s_lock; TYPE_3__ c; struct bttv_fh init; int /*<<< orphan*/  users; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int V4L2_BUF_TYPE_VBI_CAPTURE ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_INTERLACED ; 
 int /*<<< orphan*/  V4L2_FIELD_SEQ_TB ; 
 scalar_t__ VFL_TYPE_GRABBER ; 
 scalar_t__ VFL_TYPE_VBI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bttv_vbi_qops ; 
 int /*<<< orphan*/  bttv_video_qops ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 struct bttv_fh* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reset_crop ; 
 int /*<<< orphan*/  FUNC6 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bttv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct video_device*) ; 
 int /*<<< orphan*/ * v4l2_type_names ; 
 struct video_device* FUNC11 (struct file*) ; 
 int /*<<< orphan*/  FUNC12 (struct video_device*) ; 
 struct bttv* FUNC13 (struct file*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,struct bttv_fh*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct file *file)
{
	struct video_device *vdev = FUNC11(file);
	struct bttv *btv = FUNC13(file);
	struct bttv_fh *fh;
	enum v4l2_buf_type type = 0;

	FUNC4("open dev=%s\n", FUNC12(vdev));

	if (vdev->vfl_type == VFL_TYPE_GRABBER) {
		type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	} else if (vdev->vfl_type == VFL_TYPE_VBI) {
		type = V4L2_BUF_TYPE_VBI_CAPTURE;
	} else {
		FUNC0(1);
		return -ENODEV;
	}

	FUNC4("%d: open called (type=%s)\n",
		btv->c.nr, v4l2_type_names[type]);

	/* allocate per filehandle data */
	fh = FUNC5(sizeof(*fh), GFP_KERNEL);
	if (FUNC8(!fh))
		return -ENOMEM;
	btv->users++;
	file->private_data = fh;

	*fh = btv->init;
	FUNC10(&fh->fh, vdev);

	fh->type = type;
	fh->ov.setup_ok = 0;

	FUNC14(&fh->cap, &bttv_video_qops,
			    &btv->c.pci->dev, &btv->s_lock,
			    V4L2_BUF_TYPE_VIDEO_CAPTURE,
			    V4L2_FIELD_INTERLACED,
			    sizeof(struct bttv_buffer),
			    fh, &btv->lock);
	FUNC14(&fh->vbi, &bttv_vbi_qops,
			    &btv->c.pci->dev, &btv->s_lock,
			    V4L2_BUF_TYPE_VBI_CAPTURE,
			    V4L2_FIELD_SEQ_TB,
			    sizeof(struct bttv_buffer),
			    fh, &btv->lock);
	FUNC7(btv,btv->tvnorm);
	FUNC6(btv, btv->input, btv->tvnorm);
	FUNC1(btv, btv->mute);

	/* The V4L2 spec requires one global set of cropping parameters
	   which only change on request. These are stored in btv->crop[1].
	   However for compatibility with V4L apps and cropping unaware
	   V4L2 apps we now reset the cropping parameters as seen through
	   this fh, which is to say VIDIOC_G_SELECTION and scaling limit checks
	   will use btv->crop[0], the default cropping parameters for the
	   current video standard, and VIDIOC_S_FMT will not implicitly
	   change the cropping parameters until VIDIOC_S_SELECTION has been
	   called. */
	fh->do_crop = !reset_crop; /* module parameter */

	/* Likewise there should be one global set of VBI capture
	   parameters, but for compatibility with V4L apps and earlier
	   driver versions each fh has its own parameters. */
	FUNC3(&fh->vbi_fmt, btv->tvnorm);

	FUNC2(btv);
	FUNC9(&fh->fh);
	return 0;
}