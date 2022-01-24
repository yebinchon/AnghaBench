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
struct cpsw_sl {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_SL_SOFT_RESET ; 
 int CPSW_SL_SOFT_RESET_BIT ; 
 int FUNC0 (struct cpsw_sl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_sl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6(struct cpsw_sl *sl, unsigned long tmo)
{
	unsigned long timeout = jiffies + FUNC3(tmo);

	/* Set the soft reset bit */
	FUNC1(sl, CPSW_SL_SOFT_RESET, CPSW_SL_SOFT_RESET_BIT);

	/* Wait for the bit to clear */
	do {
		FUNC5(100, 200);
	} while ((FUNC0(sl, CPSW_SL_SOFT_RESET) &
		  CPSW_SL_SOFT_RESET_BIT) &&
		  FUNC4(timeout, jiffies));

	if (FUNC0(sl, CPSW_SL_SOFT_RESET) & CPSW_SL_SOFT_RESET_BIT)
		FUNC2(sl->dev, "cpsw_sl failed to soft-reset.\n");
}