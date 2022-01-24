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
typedef  int u16 ;
struct urb {int actual_length; int /*<<< orphan*/ * transfer_buffer; } ;
struct pucan_msg {int /*<<< orphan*/  type; int /*<<< orphan*/  size; } ;
struct peak_usb_device {struct net_device* netdev; } ;
struct pcan_usb_fd_if {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBADMSG ; 
#define  PCAN_UFD_MSG_CALIBRATION 132 
#define  PCAN_UFD_MSG_OVERRUN 131 
#define  PUCAN_MSG_CAN_RX 130 
#define  PUCAN_MSG_ERROR 129 
#define  PUCAN_MSG_STATUS 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct pcan_usb_fd_if*,struct pucan_msg*) ; 
 int FUNC4 (struct pcan_usb_fd_if*,struct pucan_msg*) ; 
 int FUNC5 (struct pcan_usb_fd_if*,struct pucan_msg*) ; 
 int FUNC6 (struct pcan_usb_fd_if*,struct pucan_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct pcan_usb_fd_if*,struct pucan_msg*) ; 
 struct pcan_usb_fd_if* FUNC8 (struct peak_usb_device*) ; 

__attribute__((used)) static int FUNC9(struct peak_usb_device *dev, struct urb *urb)
{
	struct pcan_usb_fd_if *usb_if = FUNC8(dev);
	struct net_device *netdev = dev->netdev;
	struct pucan_msg *rx_msg;
	u8 *msg_ptr, *msg_end;
	int err = 0;

	/* loop reading all the records from the incoming message */
	msg_ptr = urb->transfer_buffer;
	msg_end = urb->transfer_buffer + urb->actual_length;
	for (; msg_ptr < msg_end;) {
		u16 rx_msg_type, rx_msg_size;

		rx_msg = (struct pucan_msg *)msg_ptr;
		if (!rx_msg->size) {
			/* null packet found: end of list */
			break;
		}

		rx_msg_size = FUNC0(rx_msg->size);
		rx_msg_type = FUNC0(rx_msg->type);

		/* check if the record goes out of current packet */
		if (msg_ptr + rx_msg_size > msg_end) {
			FUNC1(netdev,
				   "got frag rec: should inc usb rx buf sze\n");
			err = -EBADMSG;
			break;
		}

		switch (rx_msg_type) {
		case PUCAN_MSG_CAN_RX:
			err = FUNC3(usb_if, rx_msg);
			if (err < 0)
				goto fail;
			break;

		case PCAN_UFD_MSG_CALIBRATION:
			FUNC7(usb_if, rx_msg);
			break;

		case PUCAN_MSG_ERROR:
			err = FUNC4(usb_if, rx_msg);
			if (err < 0)
				goto fail;
			break;

		case PUCAN_MSG_STATUS:
			err = FUNC6(usb_if, rx_msg);
			if (err < 0)
				goto fail;
			break;

		case PCAN_UFD_MSG_OVERRUN:
			err = FUNC5(usb_if, rx_msg);
			if (err < 0)
				goto fail;
			break;

		default:
			FUNC1(netdev,
				   "unhandled msg type 0x%02x (%d): ignored\n",
				   rx_msg_type, rx_msg_type);
			break;
		}

		msg_ptr += rx_msg_size;
	}

fail:
	if (err)
		FUNC2("received msg",
			      urb->transfer_buffer, urb->actual_length);
	return err;
}