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
typedef  int u32 ;
struct TYPE_2__ {int timer_is_set; int /*<<< orphan*/  timer; } ;
struct mwifiex_rx_reorder_tbl {int win_size; TYPE_1__ timer_context; } ;

/* Variables and functions */
 int MIN_FLUSH_TIMER_15_MS ; 
 int MIN_FLUSH_TIMER_MS ; 
 int MWIFIEX_BA_WIN_SIZE_32 ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct mwifiex_rx_reorder_tbl *tbl)
{
	u32 min_flush_time;

	if (tbl->win_size >= MWIFIEX_BA_WIN_SIZE_32)
		min_flush_time = MIN_FLUSH_TIMER_15_MS;
	else
		min_flush_time = MIN_FLUSH_TIMER_MS;

	FUNC0(&tbl->timer_context.timer,
		  jiffies + FUNC1(min_flush_time * tbl->win_size));

	tbl->timer_context.timer_is_set = true;
}