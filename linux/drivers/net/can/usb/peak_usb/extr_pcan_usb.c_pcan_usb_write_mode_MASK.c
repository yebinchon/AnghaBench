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
typedef  int /*<<< orphan*/  u8 ;
struct peak_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAN_USB_STARTUP_TIMEOUT ; 
 int /*<<< orphan*/  SJA1000_MODE_INIT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct peak_usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct peak_usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct peak_usb_device *dev, u8 onoff)
{
	int err;

	err = FUNC1(dev, onoff);
	if (err)
		return err;

	if (!onoff) {
		err = FUNC2(dev, SJA1000_MODE_INIT);
	} else {
		/* the PCAN-USB needs time to init */
		FUNC4(TASK_INTERRUPTIBLE);
		FUNC3(FUNC0(PCAN_USB_STARTUP_TIMEOUT));
	}

	return err;
}