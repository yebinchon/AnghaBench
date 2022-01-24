#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  phydev; } ;
struct TYPE_6__ {int ndesc; TYPE_3__* desc; scalar_t__ done_idx; scalar_t__ proc_idx; } ;
struct TYPE_5__ {int ndesc; TYPE_3__* desc; scalar_t__ done_idx; scalar_t__ proc_idx; } ;
struct ave_private {TYPE_2__ rx; TYPE_1__ tx; int /*<<< orphan*/  napi_rx; int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  irq; } ;
struct TYPE_7__ {int /*<<< orphan*/ * skbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVE_DESC_STOP ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct ave_private* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *ndev)
{
	struct ave_private *priv = FUNC8(ndev);
	int entry;

	FUNC2(ndev);
	FUNC4(priv->irq);
	FUNC5(priv->irq, ndev);

	FUNC9(ndev);
	FUNC10(ndev->phydev);
	FUNC7(&priv->napi_tx);
	FUNC7(&priv->napi_rx);

	FUNC0(ndev, AVE_DESC_STOP);

	/* free Tx buffer */
	for (entry = 0; entry < priv->tx.ndesc; entry++) {
		if (!priv->tx.desc[entry].skbs)
			continue;

		FUNC1(ndev, &priv->tx.desc[entry], DMA_TO_DEVICE);
		FUNC3(priv->tx.desc[entry].skbs);
		priv->tx.desc[entry].skbs = NULL;
	}
	priv->tx.proc_idx = 0;
	priv->tx.done_idx = 0;

	/* free Rx buffer */
	for (entry = 0; entry < priv->rx.ndesc; entry++) {
		if (!priv->rx.desc[entry].skbs)
			continue;

		FUNC1(ndev, &priv->rx.desc[entry], DMA_FROM_DEVICE);
		FUNC3(priv->rx.desc[entry].skbs);
		priv->rx.desc[entry].skbs = NULL;
	}
	priv->rx.proc_idx = 0;
	priv->rx.done_idx = 0;

	FUNC6(priv->tx.desc);
	FUNC6(priv->rx.desc);

	return 0;
}