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
typedef  scalar_t__ u64 ;
struct rtnl_link_stats64 {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct TYPE_2__ {scalar_t__ packets; scalar_t__ bytes; } ;
struct ixgbevf_ring {TYPE_1__ stats; int /*<<< orphan*/  syncp; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct rtnl_link_stats64 *stats,
				      const struct ixgbevf_ring *ring)
{
	u64 bytes, packets;
	unsigned int start;

	if (ring) {
		do {
			start = FUNC0(&ring->syncp);
			bytes = ring->stats.bytes;
			packets = ring->stats.packets;
		} while (FUNC1(&ring->syncp, start));
		stats->tx_bytes += bytes;
		stats->tx_packets += packets;
	}
}