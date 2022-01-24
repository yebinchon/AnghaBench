#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int dummy; } ;
struct file {int dummy; } ;
struct em28xx_v4l2 {int users; int /*<<< orphan*/  ref; int /*<<< orphan*/  v4l2_dev; } ;
struct em28xx {int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; TYPE_1__* intf; scalar_t__ alt; scalar_t__ disconnected; struct em28xx_v4l2* v4l2; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  em28xx_free_device ; 
 int /*<<< orphan*/  em28xx_free_v4l2 ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct usb_device* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  standby ; 
 int /*<<< orphan*/  tuner ; 
 int FUNC7 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct file*) ; 
 struct em28xx* FUNC10 (struct file*) ; 

__attribute__((used)) static int FUNC11(struct file *filp)
{
	struct em28xx         *dev  = FUNC10(filp);
	struct em28xx_v4l2    *v4l2 = dev->v4l2;
	struct usb_device *udev = FUNC3(dev->intf);
	int              err;

	FUNC2("users=%d\n", v4l2->users);

	FUNC9(filp);
	FUNC5(&dev->lock);

	if (v4l2->users == 1) {
		/* No sense to try to write to the device */
		if (dev->disconnected)
			goto exit;

		/* Save some power by putting tuner to sleep */
		FUNC8(&v4l2->v4l2_dev, 0, tuner, standby);

		/* do this before setting alternate! */
		FUNC1(dev, EM28XX_SUSPEND);

		/* set alternate 0 */
		dev->alt = 0;
		FUNC2("setting alternate 0\n");
		err = FUNC7(udev, 0, 0);
		if (err < 0) {
			FUNC0(&dev->intf->dev,
				"cannot change alternate number to 0 (error=%i)\n",
				err);
		}
	}

exit:
	v4l2->users--;
	FUNC4(&v4l2->ref, em28xx_free_v4l2);
	FUNC6(&dev->lock);
	FUNC4(&dev->ref, em28xx_free_device);

	return 0;
}