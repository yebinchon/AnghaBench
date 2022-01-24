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
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  dev; struct esd_tx_urb_context* context; } ;
struct net_device {int dummy; } ;
struct esd_usb2_net_priv {struct net_device* netdev; } ;
struct esd_usb2_msg {int dummy; } ;
struct esd_tx_urb_context {struct esd_usb2_net_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct urb *urb)
{
	struct esd_tx_urb_context *context = urb->context;
	struct esd_usb2_net_priv *priv;
	struct net_device *netdev;
	size_t size = sizeof(struct esd_usb2_msg);

	FUNC0(!context);

	priv = context->priv;
	netdev = priv->netdev;

	/* free up our allocated buffer */
	FUNC4(urb->dev, size,
			  urb->transfer_buffer, urb->transfer_dma);

	if (!FUNC2(netdev))
		return;

	if (urb->status)
		FUNC1(netdev, "Tx URB aborted (%d)\n", urb->status);

	FUNC3(netdev);
}