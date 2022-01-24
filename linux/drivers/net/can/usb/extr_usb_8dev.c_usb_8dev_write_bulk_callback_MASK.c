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
struct usb_8dev_tx_urb_context {int /*<<< orphan*/  echo_index; scalar_t__ dlc; struct usb_8dev_priv* priv; } ;
struct usb_8dev_priv {int /*<<< orphan*/  active_tx_urbs; struct net_device* netdev; } ;
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  dev; struct usb_8dev_tx_urb_context* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAN_LED_EVENT_TX ; 
 int /*<<< orphan*/  MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct urb *urb)
{
	struct usb_8dev_tx_urb_context *context = urb->context;
	struct usb_8dev_priv *priv;
	struct net_device *netdev;

	FUNC0(!context);

	priv = context->priv;
	netdev = priv->netdev;

	/* free up our allocated buffer */
	FUNC7(urb->dev, urb->transfer_buffer_length,
			  urb->transfer_buffer, urb->transfer_dma);

	FUNC1(&priv->active_tx_urbs);

	if (!FUNC5(netdev))
		return;

	if (urb->status)
		FUNC4(netdev, "Tx URB aborted (%d)\n",
			 urb->status);

	netdev->stats.tx_packets++;
	netdev->stats.tx_bytes += context->dlc;

	FUNC2(netdev, context->echo_index);

	FUNC3(netdev, CAN_LED_EVENT_TX);

	/* Release context */
	context->echo_index = MAX_TX_URBS;

	FUNC6(netdev);
}