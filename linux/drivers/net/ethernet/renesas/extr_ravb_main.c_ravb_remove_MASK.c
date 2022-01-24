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
struct ravb_private {scalar_t__ chip_id; int /*<<< orphan*/ * napi; int /*<<< orphan*/  desc_bat_dma; int /*<<< orphan*/  desc_bat; int /*<<< orphan*/  desc_bat_size; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCC ; 
 int /*<<< orphan*/  CCC_OPC_RESET ; 
 size_t RAVB_BE ; 
 size_t RAVB_NC ; 
 scalar_t__ RCAR_GEN2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct ravb_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ravb_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC4(pdev);
	struct ravb_private *priv = FUNC2(ndev);

	/* Stop PTP Clock driver */
	if (priv->chip_id != RCAR_GEN2)
		FUNC9(ndev);

	FUNC0(ndev->dev.parent, priv->desc_bat_size, priv->desc_bat,
			  priv->desc_bat_dma);
	/* Set reset mode */
	FUNC10(ndev, CCC_OPC_RESET, CCC);
	FUNC7(&pdev->dev);
	FUNC11(ndev);
	FUNC3(&priv->napi[RAVB_NC]);
	FUNC3(&priv->napi[RAVB_BE]);
	FUNC8(priv);
	FUNC6(&pdev->dev);
	FUNC1(ndev);
	FUNC5(pdev, NULL);

	return 0;
}