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
struct TYPE_2__ {scalar_t__ full_duplex; } ;
struct ioc3_private {int /*<<< orphan*/  ioc3_lock; int /*<<< orphan*/  emcr; TYPE_1__ mii; struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int /*<<< orphan*/  emcr; int /*<<< orphan*/  etcsr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMCR_DUPLEX ; 
 int /*<<< orphan*/  ETCSR_FD ; 
 int /*<<< orphan*/  ETCSR_HD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct ioc3_private *ip)
{
	struct ioc3_ethregs *regs = ip->regs;

	FUNC0(&ip->ioc3_lock);

	if (ip->mii.full_duplex) {
		FUNC2(ETCSR_FD, &regs->etcsr);
		ip->emcr |= EMCR_DUPLEX;
	} else {
		FUNC2(ETCSR_HD, &regs->etcsr);
		ip->emcr &= ~EMCR_DUPLEX;
	}
	FUNC2(ip->emcr, &regs->emcr);

	FUNC1(&ip->ioc3_lock);
}