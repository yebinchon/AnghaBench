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
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  dev; struct ems_tx_urb_context* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct ems_usb {int /*<<< orphan*/  active_tx_urbs; struct net_device* netdev; } ;
struct ems_tx_urb_context {int /*<<< orphan*/  echo_index; scalar_t__ dlc; struct ems_usb* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct ems_tx_urb_context *context = urb->context;
	struct ems_usb *dev;
	struct net_device *netdev;

	FUNC0(!context);

	dev = context->dev;
	netdev = dev->netdev;

	/* free up our allocated buffer */
	FUNC6(urb->dev, urb->transfer_buffer_length,
			  urb->transfer_buffer, urb->transfer_dma);

	FUNC1(&dev->active_tx_urbs);

	if (!FUNC4(netdev))
		return;

	if (urb->status)
		FUNC3(netdev, "Tx URB aborted (%d)\n", urb->status);

	FUNC5(netdev);

	/* transmission complete interrupt */
	netdev->stats.tx_packets++;
	netdev->stats.tx_bytes += context->dlc;

	FUNC2(netdev, context->echo_index);

	/* Release context */
	context->echo_index = MAX_TX_URBS;

}