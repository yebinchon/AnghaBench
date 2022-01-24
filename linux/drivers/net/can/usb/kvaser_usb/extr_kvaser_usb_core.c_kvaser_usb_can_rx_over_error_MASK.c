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
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_over_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {scalar_t__ can_dlc; int /*<<< orphan*/ * data; int /*<<< orphan*/  can_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_ERR_CRTL ; 
 int /*<<< orphan*/  CAN_ERR_CRTL_RX_OVERFLOW ; 
 int ENOMEM ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

int FUNC3(struct net_device *netdev)
{
	struct net_device_stats *stats = &netdev->stats;
	struct can_frame *cf;
	struct sk_buff *skb;

	stats->rx_over_errors++;
	stats->rx_errors++;

	skb = FUNC0(netdev, &cf);
	if (!skb) {
		stats->rx_dropped++;
		FUNC1(netdev, "No memory left for err_skb\n");
		return -ENOMEM;
	}

	cf->can_id |= CAN_ERR_CRTL;
	cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;

	stats->rx_packets++;
	stats->rx_bytes += cf->can_dlc;
	FUNC2(skb);

	return 0;
}