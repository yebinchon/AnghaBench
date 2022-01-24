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
struct ixgbe_ring {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 unsigned int IXGBE_MAX_2K_FRAME_BUILD_SKB ; 
 unsigned int IXGBE_RXBUFFER_2K ; 
 unsigned int IXGBE_RXBUFFER_3K ; 
 int /*<<< orphan*/  __IXGBE_RX_3K_BUFFER ; 
 scalar_t__ FUNC0 (struct ixgbe_ring*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct ixgbe_ring *ring)
{
	if (FUNC1(__IXGBE_RX_3K_BUFFER, &ring->state))
		return IXGBE_RXBUFFER_3K;
#if (PAGE_SIZE < 8192)
	if (FUNC0(ring))
		return IXGBE_MAX_2K_FRAME_BUILD_SKB;
#endif
	return IXGBE_RXBUFFER_2K;
}