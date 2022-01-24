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
struct ravb_private {scalar_t__ chip_id; scalar_t__ rx_over_errors; scalar_t__ rx_fifo_errors; TYPE_1__* stats; int /*<<< orphan*/  lock; struct napi_struct* napi; } ;
struct TYPE_4__ {scalar_t__ rx_over_errors; scalar_t__ rx_fifo_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct napi_struct {struct net_device* dev; } ;
struct TYPE_3__ {scalar_t__ rx_over_errors; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t RAVB_BE ; 
 size_t RAVB_NC ; 
 scalar_t__ RCAR_GEN2 ; 
 int /*<<< orphan*/  RIC0 ; 
 int /*<<< orphan*/  RIE0 ; 
 int /*<<< orphan*/  RIS0 ; 
 int RIS0_RESERVED ; 
 int /*<<< orphan*/  TIC ; 
 int /*<<< orphan*/  TIE ; 
 int /*<<< orphan*/  TIS ; 
 int TIS_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (struct napi_struct*) ; 
 struct ravb_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct net_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct napi_struct *napi, int budget)
{
	struct net_device *ndev = napi->dev;
	struct ravb_private *priv = FUNC2(ndev);
	unsigned long flags;
	int q = napi - priv->napi;
	int mask = FUNC0(q);
	int quota = budget;
	u32 ris0, tis;

	for (;;) {
		tis = FUNC5(ndev, TIS);
		ris0 = FUNC5(ndev, RIS0);
		if (!((ris0 & mask) || (tis & mask)))
			break;

		/* Processing RX Descriptor Ring */
		if (ris0 & mask) {
			/* Clear RX interrupt */
			FUNC8(ndev, ~(mask | RIS0_RESERVED), RIS0);
			if (FUNC6(ndev, &quota, q))
				goto out;
		}
		/* Processing TX Descriptor Ring */
		if (tis & mask) {
			FUNC9(&priv->lock, flags);
			/* Clear TX interrupt */
			FUNC8(ndev, ~(mask | TIS_RESERVED), TIS);
			FUNC7(ndev, q, true);
			FUNC3(ndev, q);
			FUNC10(&priv->lock, flags);
		}
	}

	FUNC1(napi);

	/* Re-enable RX/TX interrupts */
	FUNC9(&priv->lock, flags);
	if (priv->chip_id == RCAR_GEN2) {
		FUNC4(ndev, RIC0, mask, mask);
		FUNC4(ndev, TIC,  mask, mask);
	} else {
		FUNC8(ndev, mask, RIE0);
		FUNC8(ndev, mask, TIE);
	}
	FUNC10(&priv->lock, flags);

	/* Receive error message handling */
	priv->rx_over_errors =  priv->stats[RAVB_BE].rx_over_errors;
	priv->rx_over_errors += priv->stats[RAVB_NC].rx_over_errors;
	if (priv->rx_over_errors != ndev->stats.rx_over_errors)
		ndev->stats.rx_over_errors = priv->rx_over_errors;
	if (priv->rx_fifo_errors != ndev->stats.rx_fifo_errors)
		ndev->stats.rx_fifo_errors = priv->rx_fifo_errors;
out:
	return budget - quota;
}