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
struct gve_tx_ring {int /*<<< orphan*/  tx_fifo; } ;

/* Variables and functions */
 scalar_t__ MAX_TX_DESC_NEEDED ; 
 scalar_t__ FUNC0 (struct gve_tx_ring*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline bool FUNC2(struct gve_tx_ring *tx, int bytes_required)
{
	return (FUNC0(tx) >= MAX_TX_DESC_NEEDED &&
		FUNC1(&tx->tx_fifo, bytes_required));
}