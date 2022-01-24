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
struct net_device {int dummy; } ;
struct ioc3_private {struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int /*<<< orphan*/  midr_r; int /*<<< orphan*/  micr; } ;

/* Variables and functions */
 int MICR_BUSY ; 
 int MICR_PHYADDR_SHIFT ; 
 int MICR_READTRIG ; 
 int MIDR_DATA_MASK ; 
 struct ioc3_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int phy, int reg)
{
	struct ioc3_private *ip = FUNC0(dev);
	struct ioc3_ethregs *regs = ip->regs;

	while (FUNC1(&regs->micr) & MICR_BUSY)
		;
	FUNC2((phy << MICR_PHYADDR_SHIFT) | reg | MICR_READTRIG,
	       &regs->micr);
	while (FUNC1(&regs->micr) & MICR_BUSY)
		;

	return FUNC1(&regs->midr_r) & MIDR_DATA_MASK;
}