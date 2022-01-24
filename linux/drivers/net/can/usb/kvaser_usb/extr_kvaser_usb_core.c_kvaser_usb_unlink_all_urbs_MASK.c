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
struct kvaser_usb_net_priv {int dummy; } ;
struct kvaser_usb {int nchannels; struct kvaser_usb_net_priv** nets; int /*<<< orphan*/ * rxbuf_dma; int /*<<< orphan*/ * rxbuf; int /*<<< orphan*/  udev; int /*<<< orphan*/  rx_submitted; } ;

/* Variables and functions */
 int KVASER_USB_MAX_RX_URBS ; 
 int /*<<< orphan*/  KVASER_USB_RX_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct kvaser_usb_net_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct kvaser_usb *dev)
{
	int i;

	FUNC2(&dev->rx_submitted);

	for (i = 0; i < KVASER_USB_MAX_RX_URBS; i++)
		FUNC1(dev->udev, KVASER_USB_RX_BUFFER_SIZE,
				  dev->rxbuf[i], dev->rxbuf_dma[i]);

	for (i = 0; i < dev->nchannels; i++) {
		struct kvaser_usb_net_priv *priv = dev->nets[i];

		if (priv)
			FUNC0(priv);
	}
}