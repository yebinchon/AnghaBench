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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct amradio_device {int* buffer; TYPE_1__ vdev; int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int AMRADIO_GET_READY_FLAG ; 
 int BUFFER_LENGTH ; 
 int EIO ; 
 int /*<<< orphan*/  USB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct amradio_device *radio, u8 cmd, u8 arg,
		u8 *extra, u8 extralen, bool reply)
{
	int retval;
	int size;

	radio->buffer[0] = 0x00;
	radio->buffer[1] = 0x55;
	radio->buffer[2] = 0xaa;
	radio->buffer[3] = extralen;
	radio->buffer[4] = cmd;
	radio->buffer[5] = arg;
	radio->buffer[6] = 0x00;
	radio->buffer[7] = extra || reply ? 8 : 0;

	retval = FUNC3(radio->usbdev, FUNC5(radio->usbdev, 2),
		radio->buffer, BUFFER_LENGTH, &size, USB_TIMEOUT);

	if (retval < 0 || size != BUFFER_LENGTH) {
		if (FUNC6(&radio->vdev))
			FUNC0(&radio->vdev.dev,
					"cmd %02x failed\n", cmd);
		return retval ? retval : -EIO;
	}
	if (!extra && !reply)
		return 0;

	if (extra) {
		FUNC1(radio->buffer, extra, extralen);
		FUNC2(radio->buffer + extralen, 0, 8 - extralen);
		retval = FUNC3(radio->usbdev, FUNC5(radio->usbdev, 2),
			radio->buffer, BUFFER_LENGTH, &size, USB_TIMEOUT);
	} else {
		FUNC2(radio->buffer, 0, 8);
		retval = FUNC3(radio->usbdev, FUNC4(radio->usbdev, 0x81),
			radio->buffer, BUFFER_LENGTH, &size, USB_TIMEOUT);
	}
	if (retval == 0 && size == BUFFER_LENGTH)
		return 0;
	if (FUNC6(&radio->vdev) && cmd != AMRADIO_GET_READY_FLAG)
		FUNC0(&radio->vdev.dev, "follow-up to cmd %02x failed\n", cmd);
	return retval ? retval : -EIO;
}