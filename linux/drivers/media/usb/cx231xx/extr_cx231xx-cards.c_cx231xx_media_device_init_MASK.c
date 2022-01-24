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
struct media_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct cx231xx {struct media_device* media_dev; TYPE_1__ board; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct media_device* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct media_device*,struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cx231xx *dev,
				      struct usb_device *udev)
{
#ifdef CONFIG_MEDIA_CONTROLLER
	struct media_device *mdev;

	mdev = kzalloc(sizeof(*mdev), GFP_KERNEL);
	if (!mdev)
		return -ENOMEM;

	media_device_usb_init(mdev, udev, dev->board.name);

	dev->media_dev = mdev;
#endif
	return 0;
}