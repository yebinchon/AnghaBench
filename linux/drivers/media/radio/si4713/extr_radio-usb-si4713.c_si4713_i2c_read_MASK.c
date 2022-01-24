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
struct si4713_usb_device {int* buffer; int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LENGTH ; 
 int SI4713_CTS ; 
 int /*<<< orphan*/  USB_RESP_TIMEOUT ; 
 int /*<<< orphan*/  USB_TIMEOUT ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct si4713_usb_device *radio, char *data, int len)
{
	unsigned long until_jiffies = jiffies + FUNC5(USB_RESP_TIMEOUT) + 1;
	int retval;

	/* receive the response */
	for (;;) {
		retval = FUNC3(radio->usbdev,
					FUNC4(radio->usbdev, 0),
					0x01, 0xa1, 0x033f, 0, radio->buffer,
					BUFFER_LENGTH, USB_TIMEOUT);
		if (retval < 0)
			return retval;

		/*
		 * Check that we get a valid reply back (buffer[1] == 0) and
		 * that CTS is set before returning, otherwise we wait and try
		 * again. The i2c driver also does the CTS check, but the timeouts
		 * used there are much too small for this USB driver, so we wait
		 * for it here.
		 */
		if (radio->buffer[1] == 0 && (radio->buffer[2] & SI4713_CTS)) {
			FUNC0(data, radio->buffer + 2, len);
			return 0;
		}
		if (FUNC2(until_jiffies)) {
			/* Zero the status value, ensuring CTS isn't set */
			data[0] = 0;
			return 0;
		}
		FUNC1(3);
	}
}