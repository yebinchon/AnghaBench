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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct de_private {int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_tail; int /*<<< orphan*/  tx_head; int /*<<< orphan*/  rx_tail; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int IntrErr ; 
 int IntrOK ; 
 int LinkFail ; 
 int LinkPass ; 
 int /*<<< orphan*/  MacMode ; 
 int /*<<< orphan*/  MacStatus ; 
 int NormalRxPoll ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int PciErr ; 
 int RxEmpty ; 
 int RxIntr ; 
 int /*<<< orphan*/  RxPoll ; 
 int TxEmpty ; 
 int TxIntr ; 
 int /*<<< orphan*/  FUNC0 (struct de_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct de_private*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  intr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 struct de_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct de_private*,int /*<<< orphan*/ ,struct net_device*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC12 (int irq, void *dev_instance)
{
	struct net_device *dev = dev_instance;
	struct de_private *de = FUNC6(dev);
	u32 status;

	status = FUNC3(MacStatus);
	if ((!(status & (IntrOK|IntrErr))) || (status == 0xFFFF))
		return IRQ_NONE;

	FUNC7(de, intr, dev, "intr, status %08x mode %08x desc %u/%u/%u\n",
		  status, FUNC3(MacMode),
		  de->rx_tail, de->tx_head, de->tx_tail);

	FUNC4(MacStatus, status);

	if (status & (RxIntr | RxEmpty)) {
		FUNC1(de);
		if (status & RxEmpty)
			FUNC4(RxPoll, NormalRxPoll);
	}

	FUNC10(&de->lock);

	if (status & (TxIntr | TxEmpty))
		FUNC2(de);

	if (status & (LinkPass | LinkFail))
		FUNC0(de, status);

	FUNC11(&de->lock);

	if (status & PciErr) {
		u16 pci_status;

		FUNC8(de->pdev, PCI_STATUS, &pci_status);
		FUNC9(de->pdev, PCI_STATUS, pci_status);
		FUNC5(de->dev,
			   "PCI bus error, status=%08x, PCI status=%04x\n",
			   status, pci_status);
	}

	return IRQ_HANDLED;
}