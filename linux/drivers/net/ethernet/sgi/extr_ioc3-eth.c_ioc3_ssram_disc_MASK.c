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
struct ioc3_private {int* ssram; int emcr; struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int emcr; } ;

/* Variables and functions */
 int EMCR_BUFSIZ ; 
 int EMCR_RAMPAR ; 
 int IOC3_SSRAM_DM ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 

__attribute__((used)) static inline void FUNC2(struct ioc3_private *ip)
{
	struct ioc3_ethregs *regs = ip->regs;
	u32 *ssram0 = &ip->ssram[0x0000];
	u32 *ssram1 = &ip->ssram[0x4000];
	u32 pattern = 0x5555;

	/* Assume the larger size SSRAM and enable parity checking */
	FUNC1(FUNC0(&regs->emcr) | (EMCR_BUFSIZ | EMCR_RAMPAR), &regs->emcr);
	FUNC0(&regs->emcr); /* Flush */

	FUNC1(pattern, ssram0);
	FUNC1(~pattern & IOC3_SSRAM_DM, ssram1);

	if ((FUNC0(ssram0) & IOC3_SSRAM_DM) != pattern ||
	    (FUNC0(ssram1) & IOC3_SSRAM_DM) != (~pattern & IOC3_SSRAM_DM)) {
		/* set ssram size to 64 KB */
		ip->emcr |= EMCR_RAMPAR;
		FUNC1(FUNC0(&regs->emcr) & ~EMCR_BUFSIZ, &regs->emcr);
	} else {
		ip->emcr |= EMCR_BUFSIZ | EMCR_RAMPAR;
	}
}