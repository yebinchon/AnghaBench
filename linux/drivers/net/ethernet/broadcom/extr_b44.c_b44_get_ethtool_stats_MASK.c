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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct b44_hw_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_good_octets; } ;
struct b44 {int /*<<< orphan*/  lock; struct b44_hw_stats hw_stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b44_gstrings ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 struct b44* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev,
				  struct ethtool_stats *stats, u64 *data)
{
	struct b44 *bp = FUNC2(dev);
	struct b44_hw_stats *hwstat = &bp->hw_stats;
	u64 *data_src, *data_dst;
	unsigned int start;
	u32 i;

	FUNC3(&bp->lock);
	FUNC1(bp);
	FUNC4(&bp->lock);

	do {
		data_src = &hwstat->tx_good_octets;
		data_dst = data;
		start = FUNC5(&hwstat->syncp);

		for (i = 0; i < FUNC0(b44_gstrings); i++)
			*data_dst++ = *data_src++;

	} while (FUNC6(&hwstat->syncp, start));
}