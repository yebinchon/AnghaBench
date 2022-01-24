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
typedef  int u32 ;
struct cpts {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_POP ; 
 int TS_PEND_RAW ; 
 int FUNC0 (struct cpts*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpts*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_high ; 
 int /*<<< orphan*/  event_low ; 
 int /*<<< orphan*/  event_pop ; 
 int /*<<< orphan*/  intstat_raw ; 

__attribute__((used)) static int FUNC2(struct cpts *cpts, u32 *high, u32 *low)
{
	u32 r = FUNC0(cpts, intstat_raw);

	if (r & TS_PEND_RAW) {
		*high = FUNC0(cpts, event_high);
		*low  = FUNC0(cpts, event_low);
		FUNC1(cpts, EVENT_POP, event_pop);
		return 0;
	}
	return -1;
}