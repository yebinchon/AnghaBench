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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  restarts; } ;
struct TYPE_4__ {int state; TYPE_1__ can_stats; scalar_t__ restart_ms; } ;
struct kvaser_usb_net_priv {TYPE_2__ can; struct net_device* netdev; } ;
struct can_frame {scalar_t__* data; scalar_t__ can_dlc; } ;
struct can_berr_counter {scalar_t__ txerr; scalar_t__ rxerr; } ;
typedef  enum can_state { ____Placeholder_can_state } can_state ;

/* Variables and functions */
 int CAN_STATE_BUS_OFF ; 
 int CAN_STATE_ERROR_ACTIVE ; 
 int CAN_STATE_STOPPED ; 
 int /*<<< orphan*/  CMD_STOP_CHIP_REQ ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct can_frame*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvaser_usb_net_priv*,int /*<<< orphan*/ ,struct can_berr_counter const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvaser_usb_net_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct kvaser_usb_net_priv *priv,
					  u8 bus_status,
					  const struct can_berr_counter *bec)
{
	struct net_device *netdev = priv->netdev;
	struct can_frame *cf;
	struct sk_buff *skb;
	struct net_device_stats *stats;
	enum can_state new_state, old_state;

	old_state = priv->can.state;

	FUNC3(priv, bus_status, bec,
						 &new_state);

	if (new_state == old_state)
		return;

	/* Ignore state change if previous state was STOPPED and the new state
	 * is BUS_OFF. Firmware always report this as BUS_OFF, since firmware
	 * does not distinguish between BUS_OFF and STOPPED.
	 */
	if (old_state == CAN_STATE_STOPPED && new_state == CAN_STATE_BUS_OFF)
		return;

	skb = FUNC0(netdev, &cf);
	if (skb) {
		enum can_state tx_state, rx_state;

		tx_state = (bec->txerr >= bec->rxerr) ?
					new_state : CAN_STATE_ERROR_ACTIVE;
		rx_state = (bec->txerr <= bec->rxerr) ?
					new_state : CAN_STATE_ERROR_ACTIVE;
		FUNC2(netdev, cf, tx_state, rx_state);
	}

	if (new_state == CAN_STATE_BUS_OFF && old_state < CAN_STATE_BUS_OFF) {
		if (!priv->can.restart_ms)
			FUNC4
						(priv, CMD_STOP_CHIP_REQ);

		FUNC1(netdev);
	}

	if (!skb) {
		FUNC5(netdev, "No memory left for err_skb\n");
		return;
	}

	if (priv->can.restart_ms &&
	    old_state >= CAN_STATE_BUS_OFF &&
	    new_state < CAN_STATE_BUS_OFF)
		priv->can.can_stats.restarts++;

	cf->data[6] = bec->txerr;
	cf->data[7] = bec->rxerr;

	stats = &netdev->stats;
	stats->rx_packets++;
	stats->rx_bytes += cf->can_dlc;
	FUNC6(skb);
}