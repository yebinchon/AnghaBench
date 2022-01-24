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
struct cpsw_sl {int idle_mask; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_SL_MACSTATUS ; 
 int ETIMEDOUT ; 
 int FUNC0 (struct cpsw_sl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

int FUNC5(struct cpsw_sl *sl, unsigned long tmo)
{
	unsigned long timeout = jiffies + FUNC2(tmo);

	do {
		FUNC4(100, 200);
	} while (!(FUNC0(sl, CPSW_SL_MACSTATUS) &
		  sl->idle_mask) && FUNC3(timeout, jiffies));

	if (!(FUNC0(sl, CPSW_SL_MACSTATUS) & sl->idle_mask)) {
		FUNC1(sl->dev, "cpsw_sl failed to soft-reset.\n");
		return -ETIMEDOUT;
	}

	return 0;
}