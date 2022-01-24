#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  phydev; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int ndesc; scalar_t__ done_idx; scalar_t__ proc_idx; void* desc; } ;
struct TYPE_3__ {int ndesc; scalar_t__ done_idx; scalar_t__ proc_idx; void* desc; } ;
struct ave_private {int desc_size; int /*<<< orphan*/  irq; int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  napi_rx; scalar_t__ base; TYPE_2__ rx; TYPE_1__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVE_DESCID_TX ; 
 int /*<<< orphan*/  AVE_DESC_START ; 
 int AVE_GI_RXDROP ; 
 int AVE_GI_RXIINT ; 
 int AVE_GI_RXOVF ; 
 int AVE_GI_TX ; 
 scalar_t__ AVE_IIRQC ; 
 int AVE_IIRQC_BSCK ; 
 int AVE_IIRQC_EN0 ; 
 int AVE_INTM_COUNT ; 
 int AVE_MAX_ETHFRAME ; 
 scalar_t__ AVE_RXCR ; 
 int AVE_RXCR_DRPEN ; 
 int AVE_RXCR_FDUPEN ; 
 int AVE_RXCR_FLOCTR ; 
 int AVE_RXCR_MPSIZ_MASK ; 
 int AVE_RXCR_RXEN ; 
 scalar_t__ AVE_RXDC0 ; 
 int AVE_RXDC0_ADDR_START ; 
 int AVE_RXDC0_SIZE ; 
 scalar_t__ AVE_TXCR ; 
 int AVE_TXCR_FLOCTR ; 
 scalar_t__ AVE_TXDC ; 
 int AVE_TXDC_ADDR_START ; 
 int AVE_TXDC_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ave_irq_handler ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct net_device*) ; 
 void* FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct ave_private* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (scalar_t__) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct net_device *ndev)
{
	struct ave_private *priv = FUNC12(ndev);
	int entry;
	int ret;
	u32 val;

	ret = FUNC17(priv->irq, ave_irq_handler, IRQF_SHARED, ndev->name,
			  ndev);
	if (ret)
		return ret;

	priv->tx.desc = FUNC9(priv->tx.ndesc, sizeof(*priv->tx.desc),
				GFP_KERNEL);
	if (!priv->tx.desc) {
		ret = -ENOMEM;
		goto out_free_irq;
	}

	priv->rx.desc = FUNC9(priv->rx.ndesc, sizeof(*priv->rx.desc),
				GFP_KERNEL);
	if (!priv->rx.desc) {
		FUNC10(priv->tx.desc);
		ret = -ENOMEM;
		goto out_free_irq;
	}

	/* initialize Tx work and descriptor */
	priv->tx.proc_idx = 0;
	priv->tx.done_idx = 0;
	for (entry = 0; entry < priv->tx.ndesc; entry++) {
		FUNC2(ndev, AVE_DESCID_TX, entry, 0);
		FUNC1(ndev, AVE_DESCID_TX, entry, 0);
	}
	FUNC18(AVE_TXDC_ADDR_START |
	       (((priv->tx.ndesc * priv->desc_size) << 16) & AVE_TXDC_SIZE),
	       priv->base + AVE_TXDC);

	/* initialize Rx work and descriptor */
	priv->rx.proc_idx = 0;
	priv->rx.done_idx = 0;
	for (entry = 0; entry < priv->rx.ndesc; entry++) {
		if (FUNC6(ndev, entry))
			break;
	}
	FUNC18(AVE_RXDC0_ADDR_START |
	       (((priv->rx.ndesc * priv->desc_size) << 16) & AVE_RXDC0_SIZE),
	       priv->base + AVE_RXDC0);

	FUNC0(ndev, AVE_DESC_START);

	FUNC5(ndev);
	FUNC4(ndev);

	/* set Rx configuration */
	/* full duplex, enable pause drop, enalbe flow control */
	val = AVE_RXCR_RXEN | AVE_RXCR_FDUPEN | AVE_RXCR_DRPEN |
		AVE_RXCR_FLOCTR | (AVE_MAX_ETHFRAME & AVE_RXCR_MPSIZ_MASK);
	FUNC18(val, priv->base + AVE_RXCR);

	/* set Tx configuration */
	/* enable flow control, disable loopback */
	FUNC18(AVE_TXCR_FLOCTR, priv->base + AVE_TXCR);

	/* enable timer, clear EN,INTM, and mask interval unit(BSCK) */
	val = FUNC16(priv->base + AVE_IIRQC) & AVE_IIRQC_BSCK;
	val |= AVE_IIRQC_EN0 | (AVE_INTM_COUNT << 16);
	FUNC18(val, priv->base + AVE_IIRQC);

	val = AVE_GI_RXIINT | AVE_GI_RXOVF | AVE_GI_TX | AVE_GI_RXDROP;
	FUNC3(ndev, val);

	FUNC11(&priv->napi_rx);
	FUNC11(&priv->napi_tx);

	FUNC14(ndev->phydev);
	FUNC15(ndev->phydev);
	FUNC13(ndev);

	return 0;

out_free_irq:
	FUNC7(priv->irq);
	FUNC8(priv->irq, ndev);

	return ret;
}