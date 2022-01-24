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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct usb_8dev_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_STOP ; 
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct usb_8dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_8dev_priv*) ; 
 int FUNC6 (struct usb_8dev_priv*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev)
{
	struct usb_8dev_priv *priv = FUNC2(netdev);
	int err = 0;

	/* Send CLOSE command to CAN controller */
	err = FUNC6(priv);
	if (err)
		FUNC3(netdev, "couldn't stop device");

	priv->can.state = CAN_STATE_STOPPED;

	FUNC4(netdev);

	/* Stop polling */
	FUNC5(priv);

	FUNC1(netdev);

	FUNC0(netdev, CAN_LED_EVENT_STOP);

	return err;
}