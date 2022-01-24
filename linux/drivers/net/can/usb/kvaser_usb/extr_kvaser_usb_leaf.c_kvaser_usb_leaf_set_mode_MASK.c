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
struct net_device {int dummy; } ;
struct kvaser_usb_net_priv {int dummy; } ;
typedef  enum can_mode { ____Placeholder_can_mode } can_mode ;

/* Variables and functions */
#define  CAN_MODE_START 128 
 int /*<<< orphan*/  CMD_START_CHIP ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct kvaser_usb_net_priv*,int /*<<< orphan*/ ) ; 
 struct kvaser_usb_net_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev,
				    enum can_mode mode)
{
	struct kvaser_usb_net_priv *priv = FUNC1(netdev);
	int err;

	switch (mode) {
	case CAN_MODE_START:
		err = FUNC0(priv, CMD_START_CHIP);
		if (err)
			return err;
		break;
	default:
		return -EOPNOTSUPP;
	}

	return 0;
}