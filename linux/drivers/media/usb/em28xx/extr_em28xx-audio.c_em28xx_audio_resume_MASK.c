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
struct TYPE_4__ {int /*<<< orphan*/  wq_trigger; } ;
struct em28xx {scalar_t__ usb_audio_type; TYPE_2__ adev; TYPE_1__* intf; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ EM28XX_USB_AUDIO_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct em28xx *dev)
{
	if (!dev)
		return 0;

	if (dev->usb_audio_type != EM28XX_USB_AUDIO_VENDOR)
		return 0;

	FUNC0(&dev->intf->dev, "Resuming audio extension\n");
	/* Nothing to do other than schedule_work() ?? */
	FUNC1(&dev->adev.wq_trigger);
	return 0;
}