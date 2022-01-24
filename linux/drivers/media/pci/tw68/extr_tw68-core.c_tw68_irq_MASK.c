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
typedef  int u32 ;
struct tw68_dev {int pci_irqmask; int board_virqmask; int /*<<< orphan*/  name; TYPE_1__* pci; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  TW68_INTMASK ; 
 int /*<<< orphan*/  TW68_INTSTAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tw68_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct tw68_dev *dev = dev_id;
	u32 status, orig;
	int loop;

	status = orig = FUNC3(TW68_INTSTAT) & dev->pci_irqmask;
	/* Check if anything to do */
	if (0 == status)
		return IRQ_NONE;	/* Nope - return */
	for (loop = 0; loop < 10; loop++) {
		if (status & dev->board_virqmask)	/* video interrupt */
			FUNC1(dev, status);
		status = FUNC3(TW68_INTSTAT) & dev->pci_irqmask;
		if (0 == status)
			return IRQ_HANDLED;
	}
	FUNC0(&dev->pci->dev, "%s: **** INTERRUPT NOT HANDLED - clearing mask (orig 0x%08x, cur 0x%08x)",
			dev->name, orig, FUNC3(TW68_INTSTAT));
	FUNC0(&dev->pci->dev, "%s: pci_irqmask 0x%08x; board_virqmask 0x%08x ****\n",
			dev->name, dev->pci_irqmask, dev->board_virqmask);
	FUNC2(TW68_INTMASK, dev->pci_irqmask);
	return IRQ_HANDLED;
}