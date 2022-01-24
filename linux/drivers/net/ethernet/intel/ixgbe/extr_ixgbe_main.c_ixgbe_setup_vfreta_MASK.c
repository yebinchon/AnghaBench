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
typedef  int u16 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int num_rx_pools; int* rss_indir_tbl; int /*<<< orphan*/ * rss_key; TYPE_1__* ring_feature; struct ixgbe_hw hw; } ;
struct TYPE_2__ {int indices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t RING_F_RSS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 

__attribute__((used)) static void FUNC4(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u16 rss_i = adapter->ring_feature[RING_F_RSS].indices;
	int i, j;

	/* Fill out hash function seeds */
	for (i = 0; i < 10; i++) {
		u16 pool = adapter->num_rx_pools;

		while (pool--)
			FUNC1(hw,
					FUNC0(i, FUNC2(pool)),
					*(adapter->rss_key + i));
	}

	/* Fill out the redirection table */
	for (i = 0, j = 0; i < 64; i++, j++) {
		if (j == rss_i)
			j = 0;

		adapter->rss_indir_tbl[i] = j;
	}

	FUNC3(adapter);
}