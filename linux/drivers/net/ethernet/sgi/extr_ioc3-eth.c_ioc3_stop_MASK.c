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
struct ioc3_private {struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int /*<<< orphan*/  eier; int /*<<< orphan*/  emcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct ioc3_private *ip)
{
	struct ioc3_ethregs *regs = ip->regs;

	FUNC1(0, &regs->emcr);			/* Shutup */
	FUNC1(0, &regs->eier);			/* Disable interrupts */
	FUNC0(&regs->eier);			/* Flush */
}