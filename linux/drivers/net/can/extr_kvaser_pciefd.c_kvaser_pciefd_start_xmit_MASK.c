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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct kvaser_pciefd_tx_packet {scalar_t__ data; int /*<<< orphan*/ * header; } ;
struct TYPE_2__ {int echo_skb_max; scalar_t__* echo_skb; } ;
struct kvaser_pciefd_can {int echo_idx; int /*<<< orphan*/  echo_lock; TYPE_1__ can; scalar_t__ reg_base; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 scalar_t__ KVASER_PCIEFD_CAN_TX_MAX_COUNT ; 
 scalar_t__ KVASER_PCIEFD_KCAN_FIFO_LAST_REG ; 
 scalar_t__ KVASER_PCIEFD_KCAN_FIFO_REG ; 
 scalar_t__ KVASER_PCIEFD_KCAN_TX_NPACKETS_REG ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 
 int FUNC6 (struct kvaser_pciefd_tx_packet*,struct kvaser_pciefd_can*,struct sk_buff*) ; 
 struct kvaser_pciefd_can* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t FUNC11(struct sk_buff *skb,
					    struct net_device *netdev)
{
	struct kvaser_pciefd_can *can = FUNC7(netdev);
	unsigned long irq_flags;
	struct kvaser_pciefd_tx_packet packet;
	int nwords;
	u8 count;

	if (FUNC1(netdev, skb))
		return NETDEV_TX_OK;

	nwords = FUNC6(&packet, can, skb);

	FUNC9(&can->echo_lock, irq_flags);

	/* Prepare and save echo skb in internal slot */
	FUNC2(skb, netdev, can->echo_idx);

	/* Move echo index to the next slot */
	can->echo_idx = (can->echo_idx + 1) % can->can.echo_skb_max;

	/* Write header to fifo */
	FUNC4(packet.header[0],
		  can->reg_base + KVASER_PCIEFD_KCAN_FIFO_REG);
	FUNC4(packet.header[1],
		  can->reg_base + KVASER_PCIEFD_KCAN_FIFO_REG);

	if (nwords) {
		u32 data_last = ((u32 *)packet.data)[nwords - 1];

		/* Write data to fifo, except last word */
		FUNC5(can->reg_base +
			      KVASER_PCIEFD_KCAN_FIFO_REG, packet.data,
			      nwords - 1);
		/* Write last word to end of fifo */
		FUNC0(data_last, can->reg_base +
			     KVASER_PCIEFD_KCAN_FIFO_LAST_REG);
	} else {
		/* Complete write to fifo */
		FUNC0(0, can->reg_base +
			     KVASER_PCIEFD_KCAN_FIFO_LAST_REG);
	}

	count = FUNC3(can->reg_base + KVASER_PCIEFD_KCAN_TX_NPACKETS_REG);
	/* No room for a new message, stop the queue until at least one
	 * successful transmit
	 */
	if (count >= KVASER_PCIEFD_CAN_TX_MAX_COUNT ||
	    can->can.echo_skb[can->echo_idx])
		FUNC8(netdev);

	FUNC10(&can->echo_lock, irq_flags);

	return NETDEV_TX_OK;
}