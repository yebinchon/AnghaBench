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
struct sgiseeq_regs {int dummy; } ;
struct sgiseeq_private {int /*<<< orphan*/  hregs; struct sgiseeq_regs* sregs; } ;
struct net_device {unsigned int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,struct net_device*) ; 
 struct sgiseeq_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sgiseeq_regs*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct sgiseeq_private *sp = FUNC1(dev);
	struct sgiseeq_regs *sregs = sp->sregs;
	unsigned int irq = dev->irq;

	FUNC2(dev);

	/* Shutdown the Seeq. */
	FUNC3(sp->hregs, sregs);
	FUNC0(irq, dev);
	FUNC4(dev);

	return 0;
}