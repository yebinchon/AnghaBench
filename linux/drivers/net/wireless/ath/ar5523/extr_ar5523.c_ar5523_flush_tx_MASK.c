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
struct ar5523 {int /*<<< orphan*/  tx_nr_pending; int /*<<< orphan*/  tx_nr_total; int /*<<< orphan*/  tx_flush_waitq; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5523_FLUSH_TIMEOUT ; 
 int /*<<< orphan*/  AR5523_USB_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct ar5523*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ar5523 *ar)
{
	FUNC1(ar);

	/* Don't waste time trying to flush if USB is disconnected */
	if (FUNC3(AR5523_USB_DISCONNECTED, &ar->flags))
		return;
	if (!FUNC4(ar->tx_flush_waitq,
	    !FUNC2(&ar->tx_nr_pending), AR5523_FLUSH_TIMEOUT))
		FUNC0(ar, "flush timeout (tot %d pend %d)\n",
			   FUNC2(&ar->tx_nr_total),
			   FUNC2(&ar->tx_nr_pending));
}