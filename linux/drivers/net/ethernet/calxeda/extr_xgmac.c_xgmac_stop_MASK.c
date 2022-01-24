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
struct xgmac_priv {scalar_t__ base; int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ XGMAC_DMA_INTR_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xgmac_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct xgmac_priv*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct xgmac_priv *priv = FUNC1(dev);

	if (FUNC3(priv->base + XGMAC_DMA_INTR_ENA))
		FUNC0(&priv->napi);

	FUNC4(0, priv->base + XGMAC_DMA_INTR_ENA);

	FUNC2(dev);

	/* Disable the MAC core */
	FUNC6(priv->base);

	/* Release and free the Rx/Tx resources */
	FUNC5(priv);

	return 0;
}