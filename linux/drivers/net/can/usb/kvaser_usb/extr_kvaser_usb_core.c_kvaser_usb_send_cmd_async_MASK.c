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
struct urb {int dummy; } ;
struct net_device {int dummy; } ;
struct kvaser_usb_net_priv {int /*<<< orphan*/  tx_submitted; struct net_device* netdev; struct kvaser_usb* dev; } ;
struct kvaser_usb {TYPE_1__* bulk_out; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  kvaser_usb_send_cmd_callback ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct urb* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 

int FUNC8(struct kvaser_usb_net_priv *priv, void *cmd,
			      int len)
{
	struct kvaser_usb *dev = priv->dev;
	struct net_device *netdev = priv->netdev;
	struct urb *urb;
	int err;

	urb = FUNC1(0, GFP_ATOMIC);
	if (!urb)
		return -ENOMEM;

	FUNC3(urb, dev->udev,
			  FUNC5(dev->udev,
					  dev->bulk_out->bEndpointAddress),
			  cmd, len, kvaser_usb_send_cmd_callback, netdev);
	FUNC2(urb, &priv->tx_submitted);

	err = FUNC6(urb, GFP_ATOMIC);
	if (err) {
		FUNC0(netdev, "Error transmitting URB\n");
		FUNC7(urb);
	}
	FUNC4(urb);

	return 0;
}