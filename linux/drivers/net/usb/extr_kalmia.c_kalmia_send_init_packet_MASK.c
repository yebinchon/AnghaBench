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
struct usbnet {int /*<<< orphan*/  net; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KALMIA_USB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct usbnet *dev, u8 *init_msg, u8 init_msg_len,
	u8 *buffer, u8 expected_len)
{
	int act_len;
	int status;

	FUNC0(dev->net, "Sending init packet");

	status = FUNC2(dev->udev, FUNC4(dev->udev, 0x02),
		init_msg, init_msg_len, &act_len, KALMIA_USB_TIMEOUT);
	if (status != 0) {
		FUNC1(dev->net,
			"Error sending init packet. Status %i, length %i\n",
			status, act_len);
		return status;
	}
	else if (act_len != init_msg_len) {
		FUNC1(dev->net,
			"Did not send all of init packet. Bytes sent: %i",
			act_len);
	}
	else {
		FUNC0(dev->net, "Successfully sent init packet.");
	}

	status = FUNC2(dev->udev, FUNC3(dev->udev, 0x81),
		buffer, expected_len, &act_len, KALMIA_USB_TIMEOUT);

	if (status != 0)
		FUNC1(dev->net,
			"Error receiving init result. Status %i, length %i\n",
			status, act_len);
	else if (act_len != expected_len)
		FUNC1(dev->net, "Unexpected init result length: %i\n",
			act_len);

	return status;
}