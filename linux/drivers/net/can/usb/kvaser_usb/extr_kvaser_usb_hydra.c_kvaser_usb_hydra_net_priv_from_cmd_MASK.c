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
typedef  size_t u8 ;
struct kvaser_usb_net_priv {int dummy; } ;
struct kvaser_usb {size_t nchannels; struct kvaser_usb_net_priv** nets; TYPE_1__* intf; } ;
struct kvaser_cmd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 size_t FUNC1 (struct kvaser_usb const*,struct kvaser_cmd const*) ; 

__attribute__((used)) static struct kvaser_usb_net_priv *
FUNC2(const struct kvaser_usb *dev,
				   const struct kvaser_cmd *cmd)
{
	struct kvaser_usb_net_priv *priv = NULL;
	u8 channel = FUNC1(dev, cmd);

	if (channel >= dev->nchannels)
		FUNC0(&dev->intf->dev,
			"Invalid channel number (%d)\n", channel);
	else
		priv = dev->nets[channel];

	return priv;
}