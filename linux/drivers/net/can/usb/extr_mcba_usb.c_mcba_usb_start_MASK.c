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
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct net_device {int dummy; } ;
struct mcba_priv {int /*<<< orphan*/  udev; int /*<<< orphan*/  rx_submitted; struct net_device* netdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MCBA_MAX_RX_URBS ; 
 int /*<<< orphan*/  MCBA_USB_EP_IN ; 
 int /*<<< orphan*/  MCBA_USB_RX_BUFF_SIZE ; 
 int /*<<< orphan*/  MCBA_VER_REQ_CAN ; 
 int /*<<< orphan*/  MCBA_VER_REQ_USB ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct mcba_priv*) ; 
 int /*<<< orphan*/  mcba_usb_read_bulk_callback ; 
 int /*<<< orphan*/  FUNC1 (struct mcba_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mcba_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*) ; 

__attribute__((used)) static int FUNC13(struct mcba_priv *priv)
{
	struct net_device *netdev = priv->netdev;
	int err, i;

	FUNC0(priv);

	for (i = 0; i < MCBA_MAX_RX_URBS; i++) {
		struct urb *urb = NULL;
		u8 *buf;

		/* create a URB, and a buffer for it */
		urb = FUNC5(0, GFP_KERNEL);
		if (!urb) {
			err = -ENOMEM;
			break;
		}

		buf = FUNC4(priv->udev, MCBA_USB_RX_BUFF_SIZE,
					 GFP_KERNEL, &urb->transfer_dma);
		if (!buf) {
			FUNC2(netdev, "No memory left for USB buffer\n");
			FUNC9(urb);
			err = -ENOMEM;
			break;
		}

		FUNC7(urb, priv->udev,
				  FUNC10(priv->udev, MCBA_USB_EP_IN),
				  buf, MCBA_USB_RX_BUFF_SIZE,
				  mcba_usb_read_bulk_callback, priv);
		urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		FUNC6(urb, &priv->rx_submitted);

		err = FUNC11(urb, GFP_KERNEL);
		if (err) {
			FUNC12(urb);
			FUNC8(priv->udev, MCBA_USB_RX_BUFF_SIZE,
					  buf, urb->transfer_dma);
			FUNC9(urb);
			break;
		}

		/* Drop reference, USB core will take care of freeing it */
		FUNC9(urb);
	}

	/* Did we submit any URBs */
	if (i == 0) {
		FUNC3(netdev, "couldn't setup read URBs\n");
		return err;
	}

	/* Warn if we've couldn't transmit all the URBs */
	if (i < MCBA_MAX_RX_URBS)
		FUNC3(netdev, "rx performance may be slow\n");

	FUNC1(priv, MCBA_VER_REQ_USB);
	FUNC1(priv, MCBA_VER_REQ_CAN);

	return err;
}