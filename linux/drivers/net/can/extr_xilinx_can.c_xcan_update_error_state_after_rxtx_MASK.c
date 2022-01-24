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
struct TYPE_2__ {int state; } ;
struct xcan_priv {TYPE_1__ can; } ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {scalar_t__ can_dlc; } ;
typedef  enum can_state { ____Placeholder_can_state } can_state ;

/* Variables and functions */
 int CAN_STATE_ERROR_PASSIVE ; 
 int CAN_STATE_ERROR_WARNING ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 struct xcan_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,struct can_frame*) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev)
{
	struct xcan_priv *priv = FUNC1(ndev);
	enum can_state old_state = priv->can.state;
	enum can_state new_state;

	/* changing error state due to successful frame RX/TX can only
	 * occur from these states
	 */
	if (old_state != CAN_STATE_ERROR_WARNING &&
	    old_state != CAN_STATE_ERROR_PASSIVE)
		return;

	new_state = FUNC3(ndev);

	if (new_state != old_state) {
		struct sk_buff *skb;
		struct can_frame *cf;

		skb = FUNC0(ndev, &cf);

		FUNC4(ndev, new_state, skb ? cf : NULL);

		if (skb) {
			struct net_device_stats *stats = &ndev->stats;

			stats->rx_packets++;
			stats->rx_bytes += cf->can_dlc;
			FUNC2(skb);
		}
	}
}