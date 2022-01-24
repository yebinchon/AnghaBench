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
struct temac_local {int dummy; } ;

/* Variables and functions */
 int CNTLREG_WRITE_ENABLE_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XTE_CTL0_OFFSET ; 
 int /*<<< orphan*/  XTE_LSW0_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct temac_local*) ; 
 int /*<<< orphan*/  FUNC2 (struct temac_local*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct temac_local *lp, int reg, u32 value)
{
	/* As in temac_indirect_in32_locked(), we should normally not
	 * spin here.  And if it happens, we actually end up silently
	 * ignoring the write request.  Ouch.
	 */
	if (FUNC0(FUNC1(lp)))
		return;
	/* Initiate write to indirect register */
	FUNC2(lp, XTE_LSW0_OFFSET, value);
	FUNC2(lp, XTE_CTL0_OFFSET, CNTLREG_WRITE_ENABLE_MASK | reg);
	/* As in temac_indirect_in32_locked(), we should not see timeouts
	 * here.  And if it happens, we continue before the write has
	 * completed.  Not good.
	 */
	FUNC0(FUNC1(lp));
}