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
struct TYPE_4__ {int clipcount; int /*<<< orphan*/ * clips; } ;
struct TYPE_3__ {TYPE_2__ win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct v4l2_clip {int dummy; } ;
struct saa7134_dev {int nclips; void* overlay_owner; int /*<<< orphan*/  slock; int /*<<< orphan*/  clips; TYPE_2__ win; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ saa7134_no_overlay ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_dev*) ; 
 int FUNC6 (struct saa7134_dev*,TYPE_2__*,int) ; 
 struct saa7134_dev* FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *priv,
					struct v4l2_format *f)
{
	struct saa7134_dev *dev = FUNC7(file);
	int err;
	unsigned long flags;

	if (saa7134_no_overlay > 0) {
		FUNC1("V4L2_BUF_TYPE_VIDEO_OVERLAY: no_overlay\n");
		return -EINVAL;
	}
	if (f->fmt.win.clips == NULL)
		f->fmt.win.clipcount = 0;
	err = FUNC6(dev, &f->fmt.win, true);
	if (0 != err)
		return err;

	dev->win    = f->fmt.win;
	dev->nclips = f->fmt.win.clipcount;

	if (FUNC0(dev->clips, f->fmt.win.clips,
			   sizeof(struct v4l2_clip) * dev->nclips))
		return -EFAULT;

	if (priv == dev->overlay_owner) {
		FUNC2(&dev->slock, flags);
		FUNC5(dev);
		FUNC4(dev);
		FUNC3(&dev->slock, flags);
	}

	return 0;
}