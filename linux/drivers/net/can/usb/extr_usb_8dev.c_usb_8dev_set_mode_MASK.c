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
struct usb_8dev_priv {int dummy; } ;
struct net_device {int dummy; } ;
typedef  enum can_mode { ____Placeholder_can_mode } can_mode ;

/* Variables and functions */
#define  CAN_MODE_START 128 
 int EOPNOTSUPP ; 
 struct usb_8dev_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int FUNC2 (struct usb_8dev_priv*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, enum can_mode mode)
{
	struct usb_8dev_priv *priv = FUNC0(netdev);
	int err = 0;

	switch (mode) {
	case CAN_MODE_START:
		err = FUNC2(priv);
		if (err)
			FUNC1(netdev, "couldn't start device");
		break;

	default:
		return -EOPNOTSUPP;
	}

	return err;
}