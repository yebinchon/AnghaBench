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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct cp_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  pdev; int /*<<< orphan*/  mii_if; int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  Cmd ; 
 int /*<<< orphan*/  CpCmd ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IntrMask ; 
 int /*<<< orphan*/  IntrStatus ; 
 int LinkChg ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int PciErr ; 
 int RxEmpty ; 
 int RxErr ; 
 int RxFIFOOvr ; 
 int RxOK ; 
 int SWInt ; 
 int TxEmpty ; 
 int TxErr ; 
 int TxOK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cp_norx_intr_mask ; 
 int cp_rx_intr_mask ; 
 int /*<<< orphan*/  FUNC2 (struct cp_private*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,int,int) ; 
 struct cp_private* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct cp_private*,int /*<<< orphan*/ ,struct net_device*,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static irqreturn_t FUNC19 (int irq, void *dev_instance)
{
	struct net_device *dev = dev_instance;
	struct cp_private *cp;
	int handled = 0;
	u16 status;
	u16 mask;

	if (FUNC18(dev == NULL))
		return IRQ_NONE;
	cp = FUNC10(dev);

	FUNC16(&cp->lock);

	mask = FUNC3(IntrMask);
	if (!mask)
		goto out_unlock;

	status = FUNC3(IntrStatus);
	if (!status || (status == 0xFFFF))
		goto out_unlock;

	handled = 1;

	FUNC11(cp, intr, dev, "intr, status %04x cmd %02x cpcmd %04x\n",
		  status, FUNC4(Cmd), FUNC3(CpCmd));

	FUNC5(IntrStatus, status & ~cp_rx_intr_mask);

	/* close possible race's with dev_close */
	if (FUNC18(!FUNC13(dev))) {
		FUNC5(IntrMask, 0);
		goto out_unlock;
	}

	if (status & (RxOK | RxErr | RxEmpty | RxFIFOOvr))
		if (FUNC8(&cp->napi)) {
			FUNC6(IntrMask, cp_norx_intr_mask);
			FUNC1(&cp->napi);
		}

	if (status & (TxOK | TxErr | TxEmpty | SWInt))
		FUNC2(cp);
	if (status & LinkChg)
		FUNC7(&cp->mii_if, FUNC12(cp), false);


	if (status & PciErr) {
		u16 pci_status;

		FUNC14(cp->pdev, PCI_STATUS, &pci_status);
		FUNC15(cp->pdev, PCI_STATUS, pci_status);
		FUNC9(dev, "PCI bus error, status=%04x, PCI status=%04x\n",
			   status, pci_status);

		/* TODO: reset hardware */
	}

out_unlock:
	FUNC17(&cp->lock);

	return FUNC0(handled);
}