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
struct catc {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ EthStats ; 
 scalar_t__ STATS_UPDATE ; 
 struct catc* catc ; 
 int /*<<< orphan*/  FUNC0 (struct catc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  catc_stats_done ; 
 struct catc* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct catc *catc = FUNC1(catc, t, timer);
	int i;

	for (i = 0; i < 8; i++)
		FUNC0(catc, EthStats + 7 - i, catc_stats_done);

	FUNC2(&catc->timer, jiffies + STATS_UPDATE);
}