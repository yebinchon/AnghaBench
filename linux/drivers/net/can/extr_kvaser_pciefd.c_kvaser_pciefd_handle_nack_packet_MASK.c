#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  tx_errors; } ;
struct kvaser_pciefd_rx_packet {int* header; } ;
struct TYPE_5__ {int /*<<< orphan*/  arbitration_lost; } ;
struct TYPE_6__ {TYPE_3__* dev; TYPE_1__ can_stats; } ;
struct kvaser_pciefd_can {TYPE_2__ can; } ;
struct can_frame {scalar_t__ can_dlc; int /*<<< orphan*/  can_id; } ;
struct TYPE_7__ {struct net_device_stats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_ERR_ACK ; 
 int /*<<< orphan*/  CAN_ERR_BUSERROR ; 
 int /*<<< orphan*/  CAN_ERR_LOSTARB ; 
 int KVASER_PCIEFD_APACKET_ABL ; 
 struct sk_buff* FUNC0 (TYPE_3__*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct kvaser_pciefd_can *can,
					     struct kvaser_pciefd_rx_packet *p)
{
	struct sk_buff *skb;
	struct net_device_stats *stats = &can->can.dev->stats;
	struct can_frame *cf;

	skb = FUNC0(can->can.dev, &cf);

	stats->tx_errors++;
	if (p->header[0] & KVASER_PCIEFD_APACKET_ABL) {
		if (skb)
			cf->can_id |= CAN_ERR_LOSTARB;
		can->can.can_stats.arbitration_lost++;
	} else if (skb) {
		cf->can_id |= CAN_ERR_ACK;
	}

	if (skb) {
		cf->can_id |= CAN_ERR_BUSERROR;
		stats->rx_bytes += cf->can_dlc;
		stats->rx_packets++;
		FUNC2(skb);
	} else {
		stats->rx_dropped++;
		FUNC1(can->can.dev, "No memory left for err_skb\n");
	}
}