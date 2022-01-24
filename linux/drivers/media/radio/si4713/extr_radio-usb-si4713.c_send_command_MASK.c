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
typedef  char u8 ;
struct si4713_usb_device {int* buffer; int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int BUFFER_LENGTH ; 
 int /*<<< orphan*/  USB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct si4713_usb_device *radio, u8 *payload, char *data, int len)
{
	int retval;

	radio->buffer[0] = 0x3f;
	radio->buffer[1] = 0x06;

	FUNC0(radio->buffer + 2, payload, 3);
	FUNC0(radio->buffer + 5, data, len);
	FUNC1(radio->buffer + 5 + len, 0, BUFFER_LENGTH - 5 - len);

	/* send the command */
	retval = FUNC2(radio->usbdev, FUNC3(radio->usbdev, 0),
					0x09, 0x21, 0x033f, 0, radio->buffer,
					BUFFER_LENGTH, USB_TIMEOUT);

	return retval < 0 ? retval : 0;
}