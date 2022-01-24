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
struct timer_list {int dummy; } ;
struct ar5523 {int /*<<< orphan*/  tx_wd_work; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 struct ar5523* ar ; 
 int /*<<< orphan*/  FUNC0 (struct ar5523*,char*) ; 
 struct ar5523* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_wd_timer ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct ar5523 *ar = FUNC1(ar, t, tx_wd_timer);

	FUNC0(ar, "TX watchdog timer triggered\n");
	FUNC2(ar->hw, &ar->tx_wd_work);
}