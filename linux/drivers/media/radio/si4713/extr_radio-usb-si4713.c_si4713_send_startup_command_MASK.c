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
typedef  int u8 ;
struct si4713_usb_device {int* buffer; int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LENGTH ; 
 int EIO ; 
 int SI4713_CTS ; 
 int /*<<< orphan*/  USB_RESP_TIMEOUT ; 
 int /*<<< orphan*/  USB_TIMEOUT ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct si4713_usb_device *radio)
{
	unsigned long until_jiffies = jiffies + FUNC5(USB_RESP_TIMEOUT) + 1;
	u8 *buffer = radio->buffer;
	int retval;

	/* send the command */
	retval = FUNC2(radio->usbdev, FUNC4(radio->usbdev, 0),
					0x09, 0x21, 0x033f, 0, radio->buffer,
					BUFFER_LENGTH, USB_TIMEOUT);
	if (retval < 0)
		return retval;

	for (;;) {
		/* receive the response */
		retval = FUNC2(radio->usbdev, FUNC3(radio->usbdev, 0),
				0x01, 0xa1, 0x033f, 0, radio->buffer,
				BUFFER_LENGTH, USB_TIMEOUT);
		if (retval < 0)
			return retval;
		if (!radio->buffer[1]) {
			/* USB traffic sniffing showed that some commands require
			 * additional checks. */
			switch (buffer[1]) {
			case 0x32:
				if (radio->buffer[2] == 0)
					return 0;
				break;
			case 0x14:
			case 0x12:
				if (radio->buffer[2] & SI4713_CTS)
					return 0;
				break;
			case 0x06:
				if ((radio->buffer[2] & SI4713_CTS) && radio->buffer[9] == 0x08)
					return 0;
				break;
			default:
				return 0;
			}
		}
		if (FUNC1(until_jiffies))
			return -EIO;
		FUNC0(3);
	}

	return retval;
}