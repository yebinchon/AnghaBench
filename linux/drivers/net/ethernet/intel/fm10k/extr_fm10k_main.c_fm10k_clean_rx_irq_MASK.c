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
struct TYPE_4__ {int /*<<< orphan*/  staterr; } ;
union fm10k_rx_desc {TYPE_1__ d; } ;
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {unsigned int packets; unsigned int bytes; } ;
struct fm10k_ring {int /*<<< orphan*/  syncp; TYPE_2__ stats; struct sk_buff* skb; int /*<<< orphan*/  next_to_clean; } ;
struct TYPE_6__ {unsigned int total_packets; unsigned int total_bytes; } ;
struct fm10k_q_vector {TYPE_3__ rx; } ;

/* Variables and functions */
 scalar_t__ FM10K_RX_BUFFER_WRITE ; 
 union fm10k_rx_desc* FUNC0 (struct fm10k_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_ring*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct fm10k_ring*,union fm10k_rx_desc*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct fm10k_ring*) ; 
 struct sk_buff* FUNC5 (struct fm10k_ring*,union fm10k_rx_desc*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct fm10k_ring*,union fm10k_rx_desc*) ; 
 scalar_t__ FUNC7 (struct fm10k_ring*,union fm10k_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct fm10k_q_vector*,struct sk_buff*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct fm10k_q_vector *q_vector,
			      struct fm10k_ring *rx_ring,
			      int budget)
{
	struct sk_buff *skb = rx_ring->skb;
	unsigned int total_bytes = 0, total_packets = 0;
	u16 cleaned_count = FUNC4(rx_ring);

	while (FUNC9(total_packets < budget)) {
		union fm10k_rx_desc *rx_desc;

		/* return some buffers to hardware, one at a time is too slow */
		if (cleaned_count >= FM10K_RX_BUFFER_WRITE) {
			FUNC2(rx_ring, cleaned_count);
			cleaned_count = 0;
		}

		rx_desc = FUNC0(rx_ring, rx_ring->next_to_clean);

		if (!rx_desc->d.staterr)
			break;

		/* This memory barrier is needed to keep us from reading
		 * any other fields out of the rx_desc until we know the
		 * descriptor has been written back
		 */
		FUNC1();

		/* retrieve a buffer from the ring */
		skb = FUNC5(rx_ring, rx_desc, skb);

		/* exit if we failed to retrieve a buffer */
		if (!skb)
			break;

		cleaned_count++;

		/* fetch next buffer in frame if non-eop */
		if (FUNC6(rx_ring, rx_desc))
			continue;

		/* verify the packet layout is correct */
		if (FUNC3(rx_ring, rx_desc, skb)) {
			skb = NULL;
			continue;
		}

		/* populate checksum, timestamp, VLAN, and protocol */
		total_bytes += FUNC7(rx_ring, rx_desc, skb);

		FUNC8(q_vector, skb);

		/* reset skb pointer */
		skb = NULL;

		/* update budget accounting */
		total_packets++;
	}

	/* place incomplete frames back on ring for completion */
	rx_ring->skb = skb;

	FUNC10(&rx_ring->syncp);
	rx_ring->stats.packets += total_packets;
	rx_ring->stats.bytes += total_bytes;
	FUNC11(&rx_ring->syncp);
	q_vector->rx.total_packets += total_packets;
	q_vector->rx.total_bytes += total_bytes;

	return total_packets;
}