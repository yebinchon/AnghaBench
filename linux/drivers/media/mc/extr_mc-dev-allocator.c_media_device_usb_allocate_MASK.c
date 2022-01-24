#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_device {int /*<<< orphan*/  product; int /*<<< orphan*/  dev; } ;
struct module {int dummy; } ;
struct media_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct media_device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct media_device* FUNC1 (int /*<<< orphan*/ *,char const*,struct module*) ; 
 int /*<<< orphan*/  FUNC2 (struct media_device*,struct usb_device*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  media_device_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct media_device *FUNC5(struct usb_device *udev,
					       const char *module_name,
					       struct module *owner)
{
	struct media_device *mdev;

	FUNC3(&media_device_lock);
	mdev = FUNC1(&udev->dev, module_name, owner);
	if (!mdev) {
		FUNC4(&media_device_lock);
		return FUNC0(-ENOMEM);
	}

	/* check if media device is already initialized */
	if (!mdev->dev)
		FUNC2(mdev, udev, udev->product,
					module_name);
	FUNC4(&media_device_lock);
	return mdev;
}