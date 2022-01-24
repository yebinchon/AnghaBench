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
typedef  int /*<<< orphan*/  u32 ;
struct temac_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XTE_CTL0_OFFSET ; 
 int /*<<< orphan*/  XTE_LSW0_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct temac_local*) ; 
 int /*<<< orphan*/  FUNC2 (struct temac_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct temac_local*,int /*<<< orphan*/ ,int) ; 

u32 FUNC4(struct temac_local *lp, int reg)
{
	/* This initial wait should normally not spin, as we always
	 * try to wait for indirect access to complete before
	 * releasing the indirect_lock.
	 */
	if (FUNC0(FUNC1(lp)))
		return -ETIMEDOUT;
	/* Initiate read from indirect register */
	FUNC3(lp, XTE_CTL0_OFFSET, reg);
	/* Wait for indirect register access to complete.  We really
	 * should not see timeouts, and could even end up causing
	 * problem for following indirect access, so let's make a bit
	 * of WARN noise.
	 */
	if (FUNC0(FUNC1(lp)))
		return -ETIMEDOUT;
	/* Value is ready now */
	return FUNC2(lp, XTE_LSW0_OFFSET);
}