#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct peak_usb_device {int state; int /*<<< orphan*/  netdev; TYPE_1__* udev; } ;
typedef  int ptrdiff_t ;
struct TYPE_3__ {scalar_t__ speed; } ;

/* Variables and functions */
 int PCAN_UFD_CMD_BUFFER_SIZE ; 
 int /*<<< orphan*/  PCAN_UFD_CMD_TIMEOUT_MS ; 
 int PCAN_UFD_LOSPD_PKT_SIZE ; 
 int /*<<< orphan*/  PCAN_USBPRO_EP_CMDOUT ; 
 int PCAN_USB_STATE_CONNECTED ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC0 (void*,int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC3 (struct peak_usb_device*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct peak_usb_device *dev, void *cmd_tail)
{
	void *cmd_head = FUNC3(dev);
	int err = 0;
	u8 *packet_ptr;
	int packet_len;
	ptrdiff_t cmd_len;

	/* usb device unregistered? */
	if (!(dev->state & PCAN_USB_STATE_CONNECTED))
		return 0;

	/* if a packet is not filled completely by commands, the command list
	 * is terminated with an "end of collection" record.
	 */
	cmd_len = cmd_tail - cmd_head;
	if (cmd_len <= (PCAN_UFD_CMD_BUFFER_SIZE - sizeof(u64))) {
		FUNC0(cmd_tail, 0xff, sizeof(u64));
		cmd_len += sizeof(u64);
	}

	packet_ptr = cmd_head;
	packet_len = cmd_len;

	/* firmware is not able to re-assemble 512 bytes buffer in full-speed */
	if (FUNC4(dev->udev->speed != USB_SPEED_HIGH))
		packet_len = FUNC1(packet_len, PCAN_UFD_LOSPD_PKT_SIZE);

	do {
		err = FUNC5(dev->udev,
				   FUNC6(dev->udev,
						   PCAN_USBPRO_EP_CMDOUT),
				   packet_ptr, packet_len,
				   NULL, PCAN_UFD_CMD_TIMEOUT_MS);
		if (err) {
			FUNC2(dev->netdev,
				   "sending command failure: %d\n", err);
			break;
		}

		packet_ptr += packet_len;
		cmd_len -= packet_len;

		if (cmd_len < PCAN_UFD_LOSPD_PKT_SIZE)
			packet_len = cmd_len;

	} while (packet_len > 0);

	return err;
}