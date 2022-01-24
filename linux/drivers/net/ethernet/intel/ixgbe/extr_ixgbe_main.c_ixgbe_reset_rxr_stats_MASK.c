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
struct ixgbe_ring {int /*<<< orphan*/  rx_stats; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct ixgbe_ring *rx_ring)
{
	FUNC0(&rx_ring->stats, 0, sizeof(rx_ring->stats));
	FUNC0(&rx_ring->rx_stats, 0, sizeof(rx_ring->rx_stats));
}