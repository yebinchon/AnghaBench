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
struct tg3 {scalar_t__ ptp_adjust; int /*<<< orphan*/ * ptp_clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTP_CAPABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tg3 *tp)
{
	if (!FUNC1(tp, PTP_CAPABLE) || !tp->ptp_clock)
		return;

	FUNC0(tp->ptp_clock);
	tp->ptp_clock = NULL;
	tp->ptp_adjust = 0;
}