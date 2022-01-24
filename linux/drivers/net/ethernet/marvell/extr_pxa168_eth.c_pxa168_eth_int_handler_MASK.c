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
struct pxa168_eth_private {int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pxa168_eth_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa168_eth_private*,struct net_device*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa168_eth_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	struct pxa168_eth_private *pep = FUNC1(dev);

	if (FUNC3(!FUNC2(pep, dev)))
		return IRQ_NONE;
	/* Disable interrupts */
	FUNC4(pep, INT_MASK, 0);
	FUNC0(&pep->napi);
	return IRQ_HANDLED;
}