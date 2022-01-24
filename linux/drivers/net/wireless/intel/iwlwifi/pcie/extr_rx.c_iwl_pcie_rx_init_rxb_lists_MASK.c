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
struct iwl_rxq {scalar_t__ used_count; scalar_t__ free_count; int /*<<< orphan*/  rx_used; int /*<<< orphan*/  rx_free; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct iwl_rxq *rxq)
{
	FUNC1(&rxq->lock);

	FUNC0(&rxq->rx_free);
	FUNC0(&rxq->rx_used);
	rxq->free_count = 0;
	rxq->used_count = 0;
}