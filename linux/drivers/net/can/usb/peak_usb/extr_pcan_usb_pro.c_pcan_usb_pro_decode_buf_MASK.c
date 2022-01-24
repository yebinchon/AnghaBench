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
union pcan_usb_pro_rec {size_t data_type; int /*<<< orphan*/  rx_ts; int /*<<< orphan*/  rx_status; int /*<<< orphan*/  rx_msg; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct urb {int actual_length; int /*<<< orphan*/ * transfer_buffer; } ;
struct peak_usb_device {struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * rec_cnt_rd; } ;
struct pcan_usb_pro_msg {TYPE_1__ u; } ;
struct pcan_usb_pro_interface {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int ENOTSUPP ; 
#define  PCAN_USBPRO_RXMSG0 133 
#define  PCAN_USBPRO_RXMSG4 132 
#define  PCAN_USBPRO_RXMSG8 131 
#define  PCAN_USBPRO_RXRTR 130 
#define  PCAN_USBPRO_RXSTATUS 129 
#define  PCAN_USBPRO_RXTS 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct pcan_usb_pro_msg*,int /*<<< orphan*/ *,int) ; 
 struct pcan_usb_pro_interface* FUNC4 (struct peak_usb_device*) ; 
 int FUNC5 (struct pcan_usb_pro_interface*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pcan_usb_pro_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pcan_usb_pro_interface*,int /*<<< orphan*/ *) ; 
 scalar_t__* pcan_usb_pro_sizeof_rec ; 

__attribute__((used)) static int FUNC8(struct peak_usb_device *dev, struct urb *urb)
{
	struct pcan_usb_pro_interface *usb_if = FUNC4(dev);
	struct net_device *netdev = dev->netdev;
	struct pcan_usb_pro_msg usb_msg;
	u8 *rec_ptr, *msg_end;
	u16 rec_cnt;
	int err = 0;

	rec_ptr = FUNC3(&usb_msg, urb->transfer_buffer,
					urb->actual_length);
	if (!rec_ptr) {
		FUNC1(netdev, "bad msg hdr len %d\n", urb->actual_length);
		return -EINVAL;
	}

	/* loop reading all the records from the incoming message */
	msg_end = urb->transfer_buffer + urb->actual_length;
	rec_cnt = FUNC0(*usb_msg.u.rec_cnt_rd);
	for (; rec_cnt > 0; rec_cnt--) {
		union pcan_usb_pro_rec *pr = (union pcan_usb_pro_rec *)rec_ptr;
		u16 sizeof_rec = pcan_usb_pro_sizeof_rec[pr->data_type];

		if (!sizeof_rec) {
			FUNC1(netdev,
				   "got unsupported rec in usb msg:\n");
			err = -ENOTSUPP;
			break;
		}

		/* check if the record goes out of current packet */
		if (rec_ptr + sizeof_rec > msg_end) {
			FUNC1(netdev,
				"got frag rec: should inc usb rx buf size\n");
			err = -EBADMSG;
			break;
		}

		switch (pr->data_type) {
		case PCAN_USBPRO_RXMSG8:
		case PCAN_USBPRO_RXMSG4:
		case PCAN_USBPRO_RXMSG0:
		case PCAN_USBPRO_RXRTR:
			err = FUNC5(usb_if, &pr->rx_msg);
			if (err < 0)
				goto fail;
			break;

		case PCAN_USBPRO_RXSTATUS:
			err = FUNC6(usb_if, &pr->rx_status);
			if (err < 0)
				goto fail;
			break;

		case PCAN_USBPRO_RXTS:
			FUNC7(usb_if, &pr->rx_ts);
			break;

		default:
			FUNC1(netdev,
				   "unhandled rec type 0x%02x (%d): ignored\n",
				   pr->data_type, pr->data_type);
			break;
		}

		rec_ptr += sizeof_rec;
	}

fail:
	if (err)
		FUNC2("received msg",
			      urb->transfer_buffer, urb->actual_length);

	return err;
}