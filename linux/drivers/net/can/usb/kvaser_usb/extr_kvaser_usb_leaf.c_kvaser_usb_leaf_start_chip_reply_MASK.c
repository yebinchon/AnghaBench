#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct kvaser_usb_net_priv {int /*<<< orphan*/  start_comp; int /*<<< orphan*/  netdev; } ;
struct kvaser_usb {size_t nchannels; struct kvaser_usb_net_priv** nets; TYPE_3__* intf; } ;
struct TYPE_4__ {size_t channel; } ;
struct TYPE_5__ {TYPE_1__ simple; } ;
struct kvaser_cmd {TYPE_2__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct kvaser_usb *dev,
					     const struct kvaser_cmd *cmd)
{
	struct kvaser_usb_net_priv *priv;
	u8 channel = cmd->u.simple.channel;

	if (channel >= dev->nchannels) {
		FUNC2(&dev->intf->dev,
			"Invalid channel number (%d)\n", channel);
		return;
	}

	priv = dev->nets[channel];

	if (FUNC1(&priv->start_comp) &&
	    FUNC3(priv->netdev)) {
		FUNC5(priv->netdev);
	} else {
		FUNC4(priv->netdev);
		FUNC0(&priv->start_comp);
	}
}