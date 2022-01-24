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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ioc_usage_sem_reg; int /*<<< orphan*/  ioc_usage_reg; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;

/* Variables and functions */
 scalar_t__ BFA_IOC_FWIMG_MINSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct bfa_ioc *ioc)
{
	u32 usecnt;

	/**
	 * If bios boot (flash based) -- do not decrement usage count
	 */
	if (FUNC1(FUNC2(ioc)) <
						BFA_IOC_FWIMG_MINSZ)
		return;

	/**
	 * decrement usage count
	 */
	FUNC3(ioc->ioc_regs.ioc_usage_sem_reg);
	usecnt = FUNC5(ioc->ioc_regs.ioc_usage_reg);
	FUNC0(!(usecnt > 0));

	usecnt--;
	FUNC6(usecnt, ioc->ioc_regs.ioc_usage_reg);

	FUNC4(ioc->ioc_regs.ioc_usage_sem_reg);
}