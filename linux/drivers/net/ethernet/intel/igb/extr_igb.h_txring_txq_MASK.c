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
struct netdev_queue {int dummy; } ;
struct igb_ring {int /*<<< orphan*/  queue_index; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 struct netdev_queue* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct netdev_queue *FUNC1(const struct igb_ring *tx_ring)
{
	return FUNC0(tx_ring->netdev, tx_ring->queue_index);
}