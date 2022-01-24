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
struct ar5523 {int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_nr_total; int /*<<< orphan*/  tx_flush_waitq; int /*<<< orphan*/  tx_wd_timer; int /*<<< orphan*/  tx_nr_pending; } ;

/* Variables and functions */
 scalar_t__ AR5523_TX_DATA_RESTART_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct ar5523*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ar5523 *ar)
{
	FUNC1(&ar->tx_nr_total);
	if (!FUNC2(&ar->tx_nr_pending)) {
		FUNC4(&ar->tx_wd_timer);
		FUNC6(&ar->tx_flush_waitq);
	}

	if (FUNC3(&ar->tx_nr_total) < AR5523_TX_DATA_RESTART_COUNT) {
		FUNC0(ar, "restart tx queue\n");
		FUNC5(ar->hw);
	}
}