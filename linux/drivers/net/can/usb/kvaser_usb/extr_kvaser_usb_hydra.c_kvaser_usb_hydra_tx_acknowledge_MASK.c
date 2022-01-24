#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct net_device_stats {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct kvaser_usb_tx_urb_context {size_t echo_index; int /*<<< orphan*/  dlc; } ;
struct kvaser_usb_net_priv {int /*<<< orphan*/  tx_contexts_lock; TYPE_3__* netdev; int /*<<< orphan*/  active_tx_contexts; struct kvaser_usb_tx_urb_context* tx_contexts; } ;
struct kvaser_usb {size_t max_tx_urbs; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct kvaser_cmd_ext {TYPE_2__ tx_ack; } ;
struct TYPE_6__ {scalar_t__ cmd_no; } ;
struct kvaser_cmd {TYPE_1__ header; } ;
struct TYPE_8__ {struct net_device_stats stats; } ;

/* Variables and functions */
 scalar_t__ CMD_EXTENDED ; 
 int KVASER_USB_HYDRA_CF_FLAG_ABL ; 
 int KVASER_USB_HYDRA_CF_FLAG_OSM_NACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t) ; 
 size_t FUNC2 (struct kvaser_cmd const*) ; 
 struct kvaser_usb_net_priv* FUNC3 (struct kvaser_usb const*,struct kvaser_cmd const*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvaser_usb_net_priv*,struct kvaser_cmd_ext*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(const struct kvaser_usb *dev,
					    const struct kvaser_cmd *cmd)
{
	struct kvaser_usb_tx_urb_context *context;
	struct kvaser_usb_net_priv *priv;
	unsigned long irq_flags;
	bool one_shot_fail = false;
	u16 transid = FUNC2(cmd);

	priv = FUNC3(dev, cmd);
	if (!priv)
		return;

	if (!FUNC6(priv->netdev))
		return;

	if (cmd->header.cmd_no == CMD_EXTENDED) {
		struct kvaser_cmd_ext *cmd_ext = (struct kvaser_cmd_ext *)cmd;
		u32 flags = FUNC5(cmd_ext->tx_ack.flags);

		if (flags & (KVASER_USB_HYDRA_CF_FLAG_OSM_NACK |
			     KVASER_USB_HYDRA_CF_FLAG_ABL)) {
			FUNC4(priv, cmd_ext);
			one_shot_fail = true;
		}
	}

	context = &priv->tx_contexts[transid % dev->max_tx_urbs];
	if (!one_shot_fail) {
		struct net_device_stats *stats = &priv->netdev->stats;

		stats->tx_packets++;
		stats->tx_bytes += FUNC0(context->dlc);
	}

	FUNC8(&priv->tx_contexts_lock, irq_flags);

	FUNC1(priv->netdev, context->echo_index);
	context->echo_index = dev->max_tx_urbs;
	--priv->active_tx_contexts;
	FUNC7(priv->netdev);

	FUNC9(&priv->tx_contexts_lock, irq_flags);
}