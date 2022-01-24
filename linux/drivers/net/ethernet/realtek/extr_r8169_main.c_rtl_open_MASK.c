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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct rtl8169_private {int /*<<< orphan*/ * TxDescArray; int /*<<< orphan*/  TxPhyAddr; int /*<<< orphan*/ * RxDescArray; int /*<<< orphan*/  RxPhyAddr; int /*<<< orphan*/  phydev; int /*<<< orphan*/  napi; TYPE_1__ wk; struct pci_dev* pci_dev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  R8169_RX_RING_BYTES ; 
 int /*<<< orphan*/  R8169_TX_RING_BYTES ; 
 int /*<<< orphan*/  RTL_FLAG_TASK_ENABLED ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct rtl8169_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,struct rtl8169_private*) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,struct rtl8169_private*) ; 
 int FUNC15 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  rtl8169_interrupt ; 
 int /*<<< orphan*/  FUNC16 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC17 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC18 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC19 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC20 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC21 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC22 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct net_device *dev)
{
	struct rtl8169_private *tp = FUNC3(dev);
	struct pci_dev *pdev = tp->pci_dev;
	int retval = -ENOMEM;

	FUNC9(&pdev->dev);

	/*
	 * Rx and Tx descriptors needs 256 bytes alignment.
	 * dma_alloc_coherent provides more.
	 */
	tp->TxDescArray = FUNC0(&pdev->dev, R8169_TX_RING_BYTES,
					     &tp->TxPhyAddr, GFP_KERNEL);
	if (!tp->TxDescArray)
		goto err_pm_runtime_put;

	tp->RxDescArray = FUNC0(&pdev->dev, R8169_RX_RING_BYTES,
					     &tp->RxPhyAddr, GFP_KERNEL);
	if (!tp->RxDescArray)
		goto err_free_tx_0;

	retval = FUNC15(tp);
	if (retval < 0)
		goto err_free_rx_1;

	FUNC21(tp);

	retval = FUNC7(pdev, 0, rtl8169_interrupt, NULL, tp,
				 dev->name);
	if (retval < 0)
		goto err_release_fw_2;

	retval = FUNC12(tp);
	if (retval)
		goto err_free_irq;

	FUNC18(tp);

	FUNC23(RTL_FLAG_TASK_ENABLED, tp->wk.flags);

	FUNC2(&tp->napi);

	FUNC14(dev, tp);

	FUNC19(tp);

	FUNC17(tp);

	if (!FUNC13(tp))
		FUNC5(tp, hw, dev, "counter reset/update failed\n");

	FUNC8(tp->phydev);
	FUNC4(dev);

	FUNC22(tp);

	FUNC11(&pdev->dev);
out:
	return retval;

err_free_irq:
	FUNC6(pdev, 0, tp);
err_release_fw_2:
	FUNC20(tp);
	FUNC16(tp);
err_free_rx_1:
	FUNC1(&pdev->dev, R8169_RX_RING_BYTES, tp->RxDescArray,
			  tp->RxPhyAddr);
	tp->RxDescArray = NULL;
err_free_tx_0:
	FUNC1(&pdev->dev, R8169_TX_RING_BYTES, tp->TxDescArray,
			  tp->TxPhyAddr);
	tp->TxDescArray = NULL;
err_pm_runtime_put:
	FUNC10(&pdev->dev);
	goto out;
}