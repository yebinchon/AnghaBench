#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  count; } ;
struct TYPE_6__ {int /*<<< orphan*/  count; } ;
struct fm10k_hw_stats_q {int rx_stats_idx; TYPE_1__ rx_bytes; TYPE_2__ rx_packets; TYPE_2__ rx_drops; } ;
struct fm10k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FM10K_RXQCTL_ID_MASK ; 
 int FM10K_STAT_VALID ; 
 int FUNC4 (struct fm10k_hw*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC5 (struct fm10k_hw*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct fm10k_hw *hw,
				       struct fm10k_hw_stats_q *q,
				       u32 idx)
{
	u32 id_rx, id_rx_prev, rx_packets, rx_drops;
	u64 rx_bytes = 0;

	/* Retrieve RX Owner Data */
	id_rx = FUNC6(hw, FUNC3(idx));

	/* Process RX Ring */
	do {
		rx_drops = FUNC4(hw, FUNC2(idx),
						   &q->rx_drops);

		rx_packets = FUNC4(hw, FUNC1(idx),
						     &q->rx_packets);

		if (rx_packets)
			rx_bytes = FUNC5(hw,
							   FUNC0(idx),
							   &q->rx_bytes);

		/* Re-Check Owner Data */
		id_rx_prev = id_rx;
		id_rx = FUNC6(hw, FUNC3(idx));
	} while ((id_rx ^ id_rx_prev) & FM10K_RXQCTL_ID_MASK);

	/* drop non-ID bits and set VALID ID bit */
	id_rx &= FM10K_RXQCTL_ID_MASK;
	id_rx |= FM10K_STAT_VALID;

	/* update packet counts */
	if (q->rx_stats_idx == id_rx) {
		q->rx_drops.count += rx_drops;
		q->rx_packets.count += rx_packets;
		q->rx_bytes.count += rx_bytes;
	}

	/* update bases and record ID */
	FUNC7(&q->rx_drops, rx_drops);
	FUNC7(&q->rx_packets, rx_packets);
	FUNC8(&q->rx_bytes, rx_bytes);

	q->rx_stats_idx = id_rx;
}