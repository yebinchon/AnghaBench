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
struct stmmac_priv {TYPE_1__* plat; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ stmmac_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCI_STD_RESOURCE_END ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ *) ; 
 struct stmmac_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct net_device *ndev = FUNC2(&pdev->dev);
	struct stmmac_priv *priv = FUNC3(ndev);
	int i;

	FUNC7(&pdev->dev);

	if (priv->plat->stmmac_clk)
		FUNC1(priv->plat->stmmac_clk);

	for (i = 0; i <= PCI_STD_RESOURCE_END; i++) {
		if (FUNC5(pdev, i) == 0)
			continue;
		FUNC6(pdev, FUNC0(i));
		break;
	}

	FUNC4(pdev);
}