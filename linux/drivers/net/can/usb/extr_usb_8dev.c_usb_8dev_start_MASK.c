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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct usb_8dev_priv {struct net_device* netdev; TYPE_1__ can; int /*<<< orphan*/  udev; int /*<<< orphan*/  rx_submitted; } ;
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_RX_URBS ; 
 int /*<<< orphan*/  RX_BUFFER_SIZE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  USB_8DEV_ENDP_DATA_RX ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct usb_8dev_priv*) ; 
 int /*<<< orphan*/  usb_8dev_read_bulk_callback ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_8dev_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*) ; 

__attribute__((used)) static int FUNC13(struct usb_8dev_priv *priv)
{
	struct net_device *netdev = priv->netdev;
	int err, i;

	for (i = 0; i < MAX_RX_URBS; i++) {
		struct urb *urb = NULL;
		u8 *buf;

		/* create a URB, and a buffer for it */
		urb = FUNC5(0, GFP_KERNEL);
		if (!urb) {
			err = -ENOMEM;
			break;
		}

		buf = FUNC4(priv->udev, RX_BUFFER_SIZE, GFP_KERNEL,
					 &urb->transfer_dma);
		if (!buf) {
			FUNC0(netdev, "No memory left for USB buffer\n");
			FUNC9(urb);
			err = -ENOMEM;
			break;
		}

		FUNC7(urb, priv->udev,
				  FUNC10(priv->udev,
						  USB_8DEV_ENDP_DATA_RX),
				  buf, RX_BUFFER_SIZE,
				  usb_8dev_read_bulk_callback, priv);
		urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		FUNC6(urb, &priv->rx_submitted);

		err = FUNC11(urb, GFP_KERNEL);
		if (err) {
			FUNC12(urb);
			FUNC8(priv->udev, RX_BUFFER_SIZE, buf,
					  urb->transfer_dma);
			FUNC9(urb);
			break;
		}

		/* Drop reference, USB core will take care of freeing it */
		FUNC9(urb);
	}

	/* Did we submit any URBs */
	if (i == 0) {
		FUNC1(netdev, "couldn't setup read URBs\n");
		return err;
	}

	/* Warn if we've couldn't transmit all the URBs */
	if (i < MAX_RX_URBS)
		FUNC1(netdev, "rx performance may be slow\n");

	err = FUNC3(priv);
	if (err)
		goto failed;

	priv->can.state = CAN_STATE_ERROR_ACTIVE;

	return 0;

failed:
	if (err == -ENODEV)
		FUNC2(priv->netdev);

	FUNC1(netdev, "couldn't submit control: %d\n", err);

	return err;
}