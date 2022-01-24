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
struct igb_ring {int dummy; } ;
struct igb_adapter {int flags; scalar_t__ max_frame_size; } ;

/* Variables and functions */
 int IGB_FLAG_RX_LEGACY ; 
 scalar_t__ IGB_MAX_FRAME_BUILD_SKB ; 
 int /*<<< orphan*/  FUNC0 (struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_ring*) ; 

__attribute__((used)) static void FUNC4(struct igb_adapter *adapter,
				  struct igb_ring *rx_ring)
{
	/* set build_skb and buffer size flags */
	FUNC0(rx_ring);
	FUNC1(rx_ring);

	if (adapter->flags & IGB_FLAG_RX_LEGACY)
		return;

	FUNC2(rx_ring);

#if (PAGE_SIZE < 8192)
	if (adapter->max_frame_size <= IGB_MAX_FRAME_BUILD_SKB)
		return;

	FUNC3(rx_ring);
#endif
}