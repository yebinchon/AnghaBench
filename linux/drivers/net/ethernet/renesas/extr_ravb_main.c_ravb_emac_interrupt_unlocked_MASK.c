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
struct ravb_private {scalar_t__ avb_link_active_low; scalar_t__ no_avb_link; TYPE_2__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECSR ; 
 int ECSR_ICD ; 
 int ECSR_LCHNG ; 
 int ECSR_MPD ; 
 int /*<<< orphan*/  PSR ; 
 int PSR_LMON ; 
 struct ravb_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct ravb_private *priv = FUNC0(ndev);
	u32 ecsr, psr;

	ecsr = FUNC4(ndev, ECSR);
	FUNC5(ndev, ecsr, ECSR);	/* clear interrupt */

	if (ecsr & ECSR_MPD)
		FUNC1(&priv->pdev->dev, 0);
	if (ecsr & ECSR_ICD)
		ndev->stats.tx_carrier_errors++;
	if (ecsr & ECSR_LCHNG) {
		/* Link changed */
		if (priv->no_avb_link)
			return;
		psr = FUNC4(ndev, PSR);
		if (priv->avb_link_active_low)
			psr ^= PSR_LMON;
		if (!(psr & PSR_LMON)) {
			/* DIsable RX and TX */
			FUNC2(ndev);
		} else {
			/* Enable RX and TX */
			FUNC3(ndev);
		}
	}
}