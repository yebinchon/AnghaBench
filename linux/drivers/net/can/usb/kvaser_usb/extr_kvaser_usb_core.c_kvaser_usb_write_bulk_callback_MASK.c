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
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/  transfer_buffer; struct kvaser_usb_tx_urb_context* context; } ;
struct net_device {int dummy; } ;
struct kvaser_usb_tx_urb_context {struct kvaser_usb_net_priv* priv; } ;
struct kvaser_usb_net_priv {struct net_device* netdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	struct kvaser_usb_tx_urb_context *context = urb->context;
	struct kvaser_usb_net_priv *priv;
	struct net_device *netdev;

	if (FUNC0(!context))
		return;

	priv = context->priv;
	netdev = priv->netdev;

	FUNC1(urb->transfer_buffer);

	if (!FUNC3(netdev))
		return;

	if (urb->status)
		FUNC2(netdev, "Tx URB aborted (%d)\n", urb->status);
}