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
struct video_device {int dummy; } ;
struct tm6000_fh {int /*<<< orphan*/  fh; int /*<<< orphan*/  vb_vidq; int /*<<< orphan*/  radio; struct tm6000_core* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_3__ {scalar_t__ endp; } ;
struct tm6000_core {int /*<<< orphan*/  lock; TYPE_2__ isoc_in; int /*<<< orphan*/  udev; TYPE_1__ int_in; int /*<<< orphan*/  users; } ;
struct file {struct tm6000_fh* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_DEBUG_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct tm6000_core*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tm6000_fh*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tm6000_core*,struct tm6000_fh*) ; 
 int /*<<< orphan*/  FUNC5 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC6 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC7 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct video_device* FUNC12 (struct file*) ; 
 int /*<<< orphan*/  FUNC13 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct file *file)
{
	struct tm6000_fh         *fh = file->private_data;
	struct tm6000_core      *dev = fh->dev;
	struct video_device    *vdev = FUNC12(file);

	FUNC0(dev, V4L2_DEBUG_OPEN, "tm6000: close called (dev=%s, users=%d)\n",
		FUNC13(vdev), dev->users);

	FUNC2(&dev->lock);
	dev->users--;

	FUNC4(dev, fh);

	if (!dev->users) {
		FUNC7(dev);

		/* Stop interrupt USB pipe */
		FUNC6(dev);

		FUNC8(dev->udev);

		if (dev->int_in.endp)
			FUNC9(dev->udev,
					dev->isoc_in.bInterfaceNumber, 2);
		else
			FUNC9(dev->udev,
					dev->isoc_in.bInterfaceNumber, 0);

		/* Start interrupt USB pipe */
		FUNC5(dev);

		if (!fh->radio)
			FUNC14(&fh->vb_vidq);
	}
	FUNC10(&fh->fh);
	FUNC11(&fh->fh);
	FUNC1(fh);
	FUNC3(&dev->lock);

	return 0;
}