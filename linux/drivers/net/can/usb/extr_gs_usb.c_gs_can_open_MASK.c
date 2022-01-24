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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct urb {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct net_device {int dummy; } ;
struct gs_usb {int /*<<< orphan*/  rx_submitted; int /*<<< orphan*/  active_channels; } ;
struct gs_host_frame {int dummy; } ;
struct gs_device_mode {int /*<<< orphan*/  mode; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int ctrlmode; int /*<<< orphan*/  state; } ;
struct gs_can {TYPE_1__ can; int /*<<< orphan*/  channel; int /*<<< orphan*/  iface; int /*<<< orphan*/  netdev; int /*<<< orphan*/  udev; struct gs_usb* parent; } ;

/* Variables and functions */
 int CAN_CTRLMODE_3_SAMPLES ; 
 int CAN_CTRLMODE_LISTENONLY ; 
 int CAN_CTRLMODE_LOOPBACK ; 
 int CAN_CTRLMODE_ONE_SHOT ; 
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GSUSB_ENDPOINT_IN ; 
 int /*<<< orphan*/  GS_CAN_MODE_LISTEN_ONLY ; 
 int /*<<< orphan*/  GS_CAN_MODE_LOOP_BACK ; 
 int /*<<< orphan*/  GS_CAN_MODE_ONE_SHOT ; 
 int /*<<< orphan*/  GS_CAN_MODE_START ; 
 int /*<<< orphan*/  GS_CAN_MODE_TRIPLE_SAMPLE ; 
 int GS_MAX_RX_URBS ; 
 int /*<<< orphan*/  GS_USB_BREQ_MODE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gs_usb_receive_bulk_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gs_device_mode*) ; 
 struct gs_device_mode* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,...) ; 
 struct gs_can* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gs_device_mode*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct gs_usb*) ; 
 int /*<<< orphan*/  FUNC14 (struct urb*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct urb*) ; 

__attribute__((used)) static int FUNC19(struct net_device *netdev)
{
	struct gs_can *dev = FUNC5(netdev);
	struct gs_usb *parent = dev->parent;
	int rc, i;
	struct gs_device_mode *dm;
	u32 ctrlmode;

	rc = FUNC8(netdev);
	if (rc)
		return rc;

	if (FUNC0(1, &parent->active_channels) == 1) {
		for (i = 0; i < GS_MAX_RX_URBS; i++) {
			struct urb *urb;
			u8 *buf;

			/* alloc rx urb */
			urb = FUNC10(0, GFP_KERNEL);
			if (!urb)
				return -ENOMEM;

			/* alloc rx buffer */
			buf = FUNC9(dev->udev,
						 sizeof(struct gs_host_frame),
						 GFP_KERNEL,
						 &urb->transfer_dma);
			if (!buf) {
				FUNC4(netdev,
					   "No memory left for USB buffer\n");
				FUNC14(urb);
				return -ENOMEM;
			}

			/* fill, anchor, and submit rx urb */
			FUNC13(urb,
					  dev->udev,
					  FUNC15(dev->udev,
							  GSUSB_ENDPOINT_IN),
					  buf,
					  sizeof(struct gs_host_frame),
					  gs_usb_receive_bulk_callback,
					  parent);
			urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

			FUNC11(urb, &parent->rx_submitted);

			rc = FUNC17(urb, GFP_KERNEL);
			if (rc) {
				if (rc == -ENODEV)
					FUNC6(dev->netdev);

				FUNC4(netdev,
					   "usb_submit failed (err=%d)\n",
					   rc);

				FUNC18(urb);
				FUNC14(urb);
				break;
			}

			/* Drop reference,
			 * USB core will take care of freeing it
			 */
			FUNC14(urb);
		}
	}

	dm = FUNC3(sizeof(*dm), GFP_KERNEL);
	if (!dm)
		return -ENOMEM;

	/* flags */
	ctrlmode = dev->can.ctrlmode;
	dm->flags = 0;

	if (ctrlmode & CAN_CTRLMODE_LOOPBACK)
		dm->flags |= GS_CAN_MODE_LOOP_BACK;
	else if (ctrlmode & CAN_CTRLMODE_LISTENONLY)
		dm->flags |= GS_CAN_MODE_LISTEN_ONLY;

	/* Controller is not allowed to retry TX
	 * this mode is unavailable on atmels uc3c hardware
	 */
	if (ctrlmode & CAN_CTRLMODE_ONE_SHOT)
		dm->flags |= GS_CAN_MODE_ONE_SHOT;

	if (ctrlmode & CAN_CTRLMODE_3_SAMPLES)
		dm->flags |= GS_CAN_MODE_TRIPLE_SAMPLE;

	/* finally start device */
	dm->mode = GS_CAN_MODE_START;
	rc = FUNC12(FUNC1(dev->iface),
			     FUNC16(FUNC1(dev->iface), 0),
			     GS_USB_BREQ_MODE,
			     USB_DIR_OUT | USB_TYPE_VENDOR |
			     USB_RECIP_INTERFACE,
			     dev->channel,
			     0,
			     dm,
			     sizeof(*dm),
			     1000);

	if (rc < 0) {
		FUNC4(netdev, "Couldn't start device (err=%d)\n", rc);
		FUNC2(dm);
		return rc;
	}

	FUNC2(dm);

	dev->can.state = CAN_STATE_ERROR_ACTIVE;

	if (!(dev->can.ctrlmode & CAN_CTRLMODE_LISTENONLY))
		FUNC7(netdev);

	return 0;
}