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
struct mcba_usb_msg {int dummy; } ;
struct mcba_usb_ctx {int dummy; } ;
struct mcba_priv {int /*<<< orphan*/  netdev; int /*<<< orphan*/  udev; int /*<<< orphan*/  tx_submitted; } ;
typedef  int netdev_tx_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MCBA_USB_EP_OUT ; 
 int /*<<< orphan*/  MCBA_USB_TX_BUFF_SIZE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  mcba_usb_write_bulk_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mcba_usb_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mcba_usb_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*) ; 

__attribute__((used)) static netdev_tx_t FUNC13(struct mcba_priv *priv,
				 struct mcba_usb_msg *usb_msg,
				 struct mcba_usb_ctx *ctx)
{
	struct urb *urb;
	u8 *buf;
	int err;

	/* create a URB, and a buffer for it, and copy the data to the URB */
	urb = FUNC5(0, GFP_ATOMIC);
	if (!urb)
		return -ENOMEM;

	buf = FUNC4(priv->udev, MCBA_USB_TX_BUFF_SIZE, GFP_ATOMIC,
				 &urb->transfer_dma);
	if (!buf) {
		err = -ENOMEM;
		goto nomembuf;
	}

	FUNC0(buf, usb_msg, MCBA_USB_TX_BUFF_SIZE);

	FUNC7(urb, priv->udev,
			  FUNC10(priv->udev, MCBA_USB_EP_OUT), buf,
			  MCBA_USB_TX_BUFF_SIZE, mcba_usb_write_bulk_callback,
			  ctx);

	urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	FUNC6(urb, &priv->tx_submitted);

	err = FUNC11(urb, GFP_ATOMIC);
	if (FUNC3(err))
		goto failed;

	/* Release our reference to this URB, the USB core will eventually free
	 * it entirely.
	 */
	FUNC9(urb);

	return 0;

failed:
	FUNC12(urb);
	FUNC8(priv->udev, MCBA_USB_TX_BUFF_SIZE, buf,
			  urb->transfer_dma);

	if (err == -ENODEV)
		FUNC2(priv->netdev);
	else
		FUNC1(priv->netdev, "failed tx_urb %d\n", err);

nomembuf:
	FUNC9(urb);

	return err;
}