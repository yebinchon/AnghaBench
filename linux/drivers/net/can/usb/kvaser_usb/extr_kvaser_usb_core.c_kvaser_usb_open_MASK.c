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
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct kvaser_usb_net_priv {TYPE_1__ can; struct kvaser_usb* dev; } ;
struct kvaser_usb {TYPE_2__* ops; } ;
struct TYPE_4__ {int (* dev_set_opt_mode ) (struct kvaser_usb_net_priv*) ;int (* dev_start_chip ) (struct kvaser_usb_net_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct kvaser_usb*) ; 
 struct kvaser_usb_net_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 
 int FUNC4 (struct net_device*) ; 
 int FUNC5 (struct kvaser_usb_net_priv*) ; 
 int FUNC6 (struct kvaser_usb_net_priv*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev)
{
	struct kvaser_usb_net_priv *priv = FUNC2(netdev);
	struct kvaser_usb *dev = priv->dev;
	int err;

	err = FUNC4(netdev);
	if (err)
		return err;

	err = FUNC1(dev);
	if (err)
		goto error;

	err = dev->ops->dev_set_opt_mode(priv);
	if (err)
		goto error;

	err = dev->ops->dev_start_chip(priv);
	if (err) {
		FUNC3(netdev, "Cannot start device, error %d\n", err);
		goto error;
	}

	priv->can.state = CAN_STATE_ERROR_ACTIVE;

	return 0;

error:
	FUNC0(netdev);
	return err;
}