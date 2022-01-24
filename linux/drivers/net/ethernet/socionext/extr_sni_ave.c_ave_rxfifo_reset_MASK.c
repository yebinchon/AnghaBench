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
struct TYPE_2__ {int /*<<< orphan*/  ndesc; } ;
struct ave_private {scalar_t__ base; TYPE_1__ rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVE_DESC_RX_PERMIT ; 
 int /*<<< orphan*/  AVE_DESC_RX_SUSPEND ; 
 scalar_t__ AVE_GISR ; 
 int AVE_GI_RXOVF ; 
 scalar_t__ AVE_GRR ; 
 int AVE_GRR_RXFFR ; 
 scalar_t__ AVE_RXCR ; 
 int AVE_RXCR_RXEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct ave_private* FUNC2 (struct net_device*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct ave_private *priv = FUNC2(ndev);
	u32 rxcr_org;

	/* save and disable MAC receive op */
	rxcr_org = FUNC3(priv->base + AVE_RXCR);
	FUNC5(rxcr_org & (~AVE_RXCR_RXEN), priv->base + AVE_RXCR);

	/* suspend Rx descriptor */
	FUNC0(ndev, AVE_DESC_RX_SUSPEND);

	/* receive all packets before descriptor starts */
	FUNC1(ndev, priv->rx.ndesc);

	/* assert reset */
	FUNC5(AVE_GRR_RXFFR, priv->base + AVE_GRR);
	FUNC4(50);

	/* negate reset */
	FUNC5(0, priv->base + AVE_GRR);
	FUNC4(20);

	/* negate interrupt status */
	FUNC5(AVE_GI_RXOVF, priv->base + AVE_GISR);

	/* permit descriptor */
	FUNC0(ndev, AVE_DESC_RX_PERMIT);

	/* restore MAC reccieve op */
	FUNC5(rxcr_org, priv->base + AVE_RXCR);
}