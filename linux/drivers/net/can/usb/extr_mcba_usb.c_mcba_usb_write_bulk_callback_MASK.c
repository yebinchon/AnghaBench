#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  dev; struct mcba_usb_ctx* context; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct mcba_usb_ctx {int /*<<< orphan*/  ndx; scalar_t__ dlc; scalar_t__ can; TYPE_1__* priv; } ;
struct TYPE_3__ {struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_TX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mcba_usb_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct mcba_usb_ctx *ctx = urb->context;
	struct net_device *netdev;

	FUNC0(!ctx);

	netdev = ctx->priv->netdev;

	/* free up our allocated buffer */
	FUNC6(urb->dev, urb->transfer_buffer_length,
			  urb->transfer_buffer, urb->transfer_dma);

	if (ctx->can) {
		if (!FUNC5(netdev))
			return;

		netdev->stats.tx_packets++;
		netdev->stats.tx_bytes += ctx->dlc;

		FUNC2(netdev, CAN_LED_EVENT_TX);
		FUNC1(netdev, ctx->ndx);
	}

	if (urb->status)
		FUNC4(netdev, "Tx URB aborted (%d)\n", urb->status);

	/* Release the context */
	FUNC3(ctx);
}