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
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  flags; } ;
struct rtl8169_private {int /*<<< orphan*/ * RxDescArray; int /*<<< orphan*/ * TxDescArray; int /*<<< orphan*/  TxPhyAddr; int /*<<< orphan*/  RxPhyAddr; int /*<<< orphan*/  phydev; TYPE_1__ wk; struct pci_dev* pci_dev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R8169_RX_RING_BYTES ; 
 int /*<<< orphan*/  R8169_TX_RING_BYTES ; 
 int /*<<< orphan*/  RTL_FLAG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtl8169_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct rtl8169_private *tp = FUNC3(dev);
	struct pci_dev *pdev = tp->pci_dev;

	FUNC6(&pdev->dev);

	/* Update counters before going down */
	FUNC9(tp);

	FUNC10(tp);
	/* Clear all task flags */
	FUNC0(tp->wk.flags, RTL_FLAG_MAX);

	FUNC8(dev);
	FUNC11(tp);

	FUNC1(&tp->wk.work);

	FUNC5(tp->phydev);

	FUNC4(pdev, 0, tp);

	FUNC2(&pdev->dev, R8169_RX_RING_BYTES, tp->RxDescArray,
			  tp->RxPhyAddr);
	FUNC2(&pdev->dev, R8169_TX_RING_BYTES, tp->TxDescArray,
			  tp->TxPhyAddr);
	tp->TxDescArray = NULL;
	tp->RxDescArray = NULL;

	FUNC7(&pdev->dev);

	return 0;
}