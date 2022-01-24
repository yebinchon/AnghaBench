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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  restart_queue; } ;
struct fm10k_ring {TYPE_1__ tx_stats; int /*<<< orphan*/  queue_index; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct fm10k_ring*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct fm10k_ring *tx_ring, u16 size)
{
	FUNC3(tx_ring->netdev, tx_ring->queue_index);

	/* Memory barrier before checking head and tail */
	FUNC4();

	/* Check again in a case another CPU has just made room available */
	if (FUNC1(FUNC0(tx_ring) < size))
		return -EBUSY;

	/* A reprieve! - use start_queue because it doesn't call schedule */
	FUNC2(tx_ring->netdev, tx_ring->queue_index);
	++tx_ring->tx_stats.restart_queue;
	return 0;
}