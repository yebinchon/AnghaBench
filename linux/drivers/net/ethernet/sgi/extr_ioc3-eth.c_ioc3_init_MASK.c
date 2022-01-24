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
struct ioc3_private {int ehar_h; int ehar_l; int /*<<< orphan*/  ioc3_timer; struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int /*<<< orphan*/  ersr; int /*<<< orphan*/  ehar_l; int /*<<< orphan*/  ehar_h; int /*<<< orphan*/  ertr; int /*<<< orphan*/  ercsr; int /*<<< orphan*/  etcdc; int /*<<< orphan*/  erbar; int /*<<< orphan*/  emcr; } ;

/* Variables and functions */
 int EMCR_RST ; 
 int ERBAR_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ioc3_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct ioc3_private *ip = FUNC2(dev);
	struct ioc3_ethregs *regs = ip->regs;

	FUNC1(&ip->ioc3_timer);	/* Kill if running	*/

	FUNC5(EMCR_RST, &regs->emcr);		/* Reset		*/
	FUNC3(&regs->emcr);			/* Flush WB		*/
	FUNC4(4);				/* Give it time ...	*/
	FUNC5(0, &regs->emcr);
	FUNC3(&regs->emcr);

	/* Misc registers  */
	FUNC5(ERBAR_VAL, &regs->erbar);
	FUNC3(&regs->etcdc);			/* Clear on read */
	FUNC5(15, &regs->ercsr);		/* RX low watermark  */
	FUNC5(0, &regs->ertr);			/* Interrupt immediately */
	FUNC0(dev);
	FUNC5(ip->ehar_h, &regs->ehar_h);
	FUNC5(ip->ehar_l, &regs->ehar_l);
	FUNC5(42, &regs->ersr);		/* XXX should be random */
}