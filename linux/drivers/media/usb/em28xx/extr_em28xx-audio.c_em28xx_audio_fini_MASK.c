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
struct TYPE_4__ {int /*<<< orphan*/ * sndcard; int /*<<< orphan*/  wq_trigger; } ;
struct em28xx {scalar_t__ usb_audio_type; int /*<<< orphan*/  ref; TYPE_2__ adev; TYPE_1__* intf; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ EM28XX_USB_AUDIO_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*) ; 
 int /*<<< orphan*/  em28xx_free_device ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct em28xx *dev)
{
	if (!dev)
		return 0;

	if (dev->usb_audio_type != EM28XX_USB_AUDIO_VENDOR) {
		/*
		 * This device does not support the extension (in this case
		 * the device is expecting the snd-usb-audio module or
		 * doesn't have analog audio support at all)
		 */
		return 0;
	}

	FUNC0(&dev->intf->dev, "Closing audio extension\n");

	if (dev->adev.sndcard) {
		FUNC4(dev->adev.sndcard);
		FUNC2(&dev->adev.wq_trigger);

		FUNC1(dev);

		FUNC5(dev->adev.sndcard);
		dev->adev.sndcard = NULL;
	}

	FUNC3(&dev->ref, em28xx_free_device);
	return 0;
}