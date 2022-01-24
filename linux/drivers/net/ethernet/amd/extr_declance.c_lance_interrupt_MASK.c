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
struct TYPE_2__ {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  tx_errors; } ;
struct net_device {int /*<<< orphan*/  name; TYPE_1__ stats; } ;
struct lance_regs {int rap; int rdp; } ;
struct lance_private {struct lance_regs* ll; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int LE_C0_BABL ; 
 int LE_C0_CERR ; 
 int LE_C0_ERR ; 
 int LE_C0_INEA ; 
 int LE_C0_INTR ; 
 int LE_C0_MERR ; 
 int LE_C0_MISS ; 
 int LE_C0_RINT ; 
 int LE_C0_STOP ; 
 int LE_C0_TINT ; 
 int LE_CSR0 ; 
 int /*<<< orphan*/  FUNC0 (struct lance_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct lance_private*) ; 
 struct lance_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct lance_private *lp = FUNC5(dev);
	volatile struct lance_regs *ll = lp->ll;
	int csr0;

	FUNC8(&ll->rap, LE_CSR0);
	csr0 = ll->rdp;

	/* Acknowledge all the interrupt sources ASAP */
	FUNC8(&ll->rdp, csr0 & (LE_C0_INTR | LE_C0_TINT | LE_C0_RINT));

	if ((csr0 & LE_C0_ERR)) {
		/* Clear the error condition */
		FUNC8(&ll->rdp, LE_C0_BABL | LE_C0_ERR | LE_C0_MISS |
			 LE_C0_CERR | LE_C0_MERR);
	}
	if (csr0 & LE_C0_RINT)
		FUNC2(dev);

	if (csr0 & LE_C0_TINT)
		FUNC3(dev);

	if (csr0 & LE_C0_BABL)
		dev->stats.tx_errors++;

	if (csr0 & LE_C0_MISS)
		dev->stats.rx_errors++;

	if (csr0 & LE_C0_MERR) {
		FUNC7("%s: Memory error, status %04x\n", dev->name, csr0);

		FUNC8(&ll->rdp, LE_C0_STOP);

		FUNC1(dev);
		FUNC4(lp);
		FUNC0(lp);
		FUNC6(dev);
	}

	FUNC8(&ll->rdp, LE_C0_INEA);
	FUNC8(&ll->rdp, LE_C0_INEA);
	return IRQ_HANDLED;
}