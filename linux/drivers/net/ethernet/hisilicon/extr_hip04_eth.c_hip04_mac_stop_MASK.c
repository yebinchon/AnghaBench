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
struct net_device {int dummy; } ;
struct hip04_priv {scalar_t__* rx_phys; int /*<<< orphan*/  dev; scalar_t__ phy; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 int RX_DESC_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hip04_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct hip04_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct net_device *ndev)
{
	struct hip04_priv *priv = FUNC5(ndev);
	int i;

	FUNC4(&priv->napi);
	FUNC6(ndev);
	FUNC1(ndev);
	FUNC3(ndev, true);
	FUNC2(priv);

	if (priv->phy)
		FUNC7(priv->phy);

	for (i = 0; i < RX_DESC_NUM; i++) {
		if (priv->rx_phys[i]) {
			FUNC0(priv->dev, priv->rx_phys[i],
					 RX_BUF_SIZE, DMA_FROM_DEVICE);
			priv->rx_phys[i] = 0;
		}
	}

	return 0;
}