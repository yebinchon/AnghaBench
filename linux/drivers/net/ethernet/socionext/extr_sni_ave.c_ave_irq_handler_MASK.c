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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dropped; int /*<<< orphan*/  fifo_errors; } ;
struct ave_private {int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  napi_rx; scalar_t__ base; TYPE_1__ stats_rx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ AVE_GISR ; 
 int AVE_GI_PHY ; 
 int AVE_GI_RXDROP ; 
 int AVE_GI_RXERR ; 
 int AVE_GI_RXIINT ; 
 int AVE_GI_RXOVF ; 
 int AVE_GI_TX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct ave_private* FUNC5 (struct net_device*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *netdev)
{
	struct net_device *ndev = (struct net_device *)netdev;
	struct ave_private *priv = FUNC5(ndev);
	u32 gimr_val, gisr_val;

	gimr_val = FUNC0(ndev);

	/* get interrupt status */
	gisr_val = FUNC6(priv->base + AVE_GISR);

	/* PHY */
	if (gisr_val & AVE_GI_PHY)
		FUNC7(AVE_GI_PHY, priv->base + AVE_GISR);

	/* check exceeding packet */
	if (gisr_val & AVE_GI_RXERR) {
		FUNC7(AVE_GI_RXERR, priv->base + AVE_GISR);
		FUNC4(ndev, "receive a packet exceeding frame buffer\n");
	}

	gisr_val &= gimr_val;
	if (!gisr_val)
		goto exit_isr;

	/* RxFIFO overflow */
	if (gisr_val & AVE_GI_RXOVF) {
		priv->stats_rx.fifo_errors++;
		FUNC2(ndev);
		goto exit_isr;
	}

	/* Rx drop */
	if (gisr_val & AVE_GI_RXDROP) {
		priv->stats_rx.dropped++;
		FUNC7(AVE_GI_RXDROP, priv->base + AVE_GISR);
	}

	/* Rx interval */
	if (gisr_val & AVE_GI_RXIINT) {
		FUNC3(&priv->napi_rx);
		/* still force to disable Rx interrupt until NAPI finishes */
		gimr_val &= ~AVE_GI_RXIINT;
	}

	/* Tx completed */
	if (gisr_val & AVE_GI_TX) {
		FUNC3(&priv->napi_tx);
		/* still force to disable Tx interrupt until NAPI finishes */
		gimr_val &= ~AVE_GI_TX;
	}

exit_isr:
	FUNC1(ndev, gimr_val);

	return IRQ_HANDLED;
}